#include "sensor.h"
#include "motor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include "fastrun.h"
#include <math.h>
#include <stdio.h>
#include <string.h>

volatile uint8_t g_scan_step = 0;
volatile uint8_t g_adc_step = 0;

const scan_step_t scan_table[SEN_NUM] = {
    { { L0_GPIO_Port, L0_Pin }, 0, 8 },
    { { L1_GPIO_Port, L1_Pin }, 1, 9 },
    { { L2_GPIO_Port, L2_Pin }, 2, 10 },
    { { L3_GPIO_Port, L3_Pin }, 3, 11 },
    { { L4_GPIO_Port, L4_Pin }, 4, 12 },
    { { L5_GPIO_Port, L5_Pin }, 5, 13 },
    { { L6_GPIO_Port, L6_Pin }, 6, 14 },
    { { L7_GPIO_Port, L7_Pin }, 7, 15 },
};

static void sensor_emitters_off(void);
static void sensor_set_active_step(uint8_t step);
static void sensor_led_on(const led_pin_t *p_led);
static void sensor_led_off(const led_pin_t *p_led);

const uint16_t state_table[18] = {
    0x0001, 0x0003, 0x0007, 0x000f, 0x001f, 0x003f, 0x007f, 0x00ff, 
    0x01ff, 0x03ff, 0x07ff, 0x0fff, 0x1fff, 0x3fff, 0x7fff, 0xffff, 0x0000, 0x0000
};

static void sensor_led_on(const led_pin_t *p_led)
{
    p_led->port->BSRR = p_led->pin;
}

static void sensor_led_off(const led_pin_t *p_led)
{
    p_led->port->BSRR = (uint32_t)p_led->pin << 16u;
}


static void sensor_emitters_off(void)
{
    GPIOC->BSRR = ((uint32_t)L0_Pin | (uint32_t)L1_Pin | (uint32_t)L5_Pin | (uint32_t)L6_Pin | (uint32_t)L7_Pin) << 16u;
    GPIOF->BSRR = ((uint32_t)L2_Pin | (uint32_t)L3_Pin | (uint32_t)L4_Pin) << 16u;
}

static void sensor_set_active_step(uint8_t step)
{
    const scan_step_t *p_step = &scan_table[step];

    sensor_emitters_off();
    sensor_led_on(&p_step->led);
}

static void sensor_adc_stop(ADC_TypeDef *adc)
{
    if (LL_ADC_REG_IsConversionOngoing(adc) != 0U) {
        LL_ADC_REG_StopConversion(adc);
        while (LL_ADC_REG_IsConversionOngoing(adc) != 0U) {
        }
    }

    if (LL_ADC_IsEnabled(adc) != 0U) {
        LL_ADC_Disable(adc);
        while (LL_ADC_IsDisableOngoing(adc) != 0U) {
        }
    }
}

static void sensor_adc_enable_ready(ADC_TypeDef *adc)
{
    LL_ADC_ClearFlag_ADRDY(adc);
    LL_ADC_Enable(adc);
    while (LL_ADC_IsActiveFlag_ADRDY(adc) == 0U) {
    }
    LL_ADC_ClearFlag_ADRDY(adc);
}

static void sensor_adc_calibrate_enable(ADC_TypeDef *adc)
{
    volatile uint32_t wait_loop_index;

    sensor_adc_stop(adc);
    LL_ADC_StartCalibration(adc, LL_ADC_SINGLE_ENDED);
    while (LL_ADC_IsCalibrationOnGoing(adc) != 0U) {
    }

    wait_loop_index = (LL_ADC_DELAY_CALIB_ENABLE_ADC_CYCLES * 32U);
    while (wait_loop_index != 0U) {
        wait_loop_index--;
    }

    sensor_adc_enable_ready(adc);
}

static void sensor_adc_clear_flags(void)
{
    LL_ADC_ClearFlag_EOC(ADC1);
    LL_ADC_ClearFlag_EOS(ADC1);
    LL_ADC_ClearFlag_OVR(ADC1);
    LL_ADC_ClearFlag_EOC(ADC2);
    LL_ADC_ClearFlag_EOS(ADC2);
    LL_ADC_ClearFlag_OVR(ADC2);
}

static void sensor_adc_start_pair(void)
{
    LL_ADC_EnableIT_OVR(ADC1);
    LL_ADC_EnableIT_OVR(ADC2);
    LL_ADC_EnableIT_EOC(ADC2);
    LL_ADC_REG_StartConversion(ADC1);
    LL_ADC_REG_StartConversion(ADC2);
}

static void sensor_tim2_start_trigger(void)
{
    LL_TIM_ClearFlag_UPDATE(TIM2);
    LL_TIM_ClearFlag_CC2(TIM2);
    LL_TIM_SetCounter(TIM2, 0U);
    LL_TIM_GenerateEvent_UPDATE(TIM2);
    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH2);
    LL_TIM_EnableCounter(TIM2);
}

static void sensor_tim2_stop_trigger(void)
{
    LL_TIM_DisableCounter(TIM2);
    LL_TIM_CC_DisableChannel(TIM2, LL_TIM_CHANNEL_CH2);
    LL_TIM_SetCounter(TIM2, 0U);
    LL_TIM_ClearFlag_UPDATE(TIM2);
    LL_TIM_ClearFlag_CC2(TIM2);
}

void sensor_scan_start(void)
{
    sensor_tim2_stop_trigger();
    sensor_adc_stop(ADC1);
    sensor_adc_stop(ADC2);
    sensor_adc_clear_flags();

    sensor_adc_calibrate_enable(ADC1);
    sensor_adc_calibrate_enable(ADC2);

    g_scan_step = 0;
    g_adc_step = 0;
    sensor_set_active_step(0);

    sensor_adc_clear_flags();
    sensor_adc_start_pair();
    sensor_tim2_start_trigger();
}

static void sensor_adc_recover_from_error(void)
{
    sensor_tim2_stop_trigger();
    sensor_adc_stop(ADC1);
    sensor_adc_stop(ADC2);
    sensor_adc_clear_flags();

    g_adc_step = 0;
    g_scan_step = 0;
    sensor_set_active_step(0);

    sensor_adc_enable_ready(ADC1);
    sensor_adc_enable_ready(ADC2);
    sensor_adc_start_pair();
    sensor_tim2_start_trigger();
}

static void sensor_process_adc_step(uint32_t val_hi, uint32_t val_lo)
{
    uint8_t step = g_adc_step;
    const scan_step_t *p_step = &scan_table[step];
    uint8_t hi_idx = p_step->sen_hi_idx;
    uint8_t lo_idx = p_step->sen_lo_idx;

    g_sen[hi_idx].iq17_4095_value = (float)val_hi;
    g_sen[lo_idx].iq17_4095_value = (float)val_lo;

    sensor_led_off(&p_step->led);

    {
        float val = g_sen[hi_idx].iq17_4095_value;
        float max_val = g_sen[hi_idx].iq17_4095_max_value;
        float min_val = g_sen[hi_idx].iq17_4095_min_value;

        if (val > max_val) {
            g_sen[hi_idx].iq17_127_value = 127.0f;
        } else if (val < min_val) {
            g_sen[hi_idx].iq17_127_value = 0.0f;
        } else {
            float denom = max_val - min_val;
            if (denom <= 0.0f) denom = 1.0f;
            g_sen[hi_idx].iq17_127_value = ((val - min_val) * 127.0f) / denom;
        }

        if (g_sen[hi_idx].iq17_127_value < 35.0f) {
            g_sen[hi_idx].iq17_ON_OFF_value = 0.0f;
        } else {
            g_sen[hi_idx].iq17_ON_OFF_value = 1.0f;
        }

        if (g_sen[hi_idx].iq17_127_value > 60.0f) {
            g_pos.u16state |= g_sen[hi_idx].u16active_arr;
            g_Flag.lineout_flag = OFF;
        } else {
            g_pos.u16state &= g_sen[hi_idx].u16passive_arr;
        }
    }

    {
        float val = g_sen[lo_idx].iq17_4095_value;
        float max_val = g_sen[lo_idx].iq17_4095_max_value;
        float min_val = g_sen[lo_idx].iq17_4095_min_value;

        if (val > max_val) {
            g_sen[lo_idx].iq17_127_value = 127.0f;
        } else if (val < min_val) {
            g_sen[lo_idx].iq17_127_value = 0.0f;
        } else {
            float denom = max_val - min_val;
            if (denom <= 0.0f) denom = 1.0f;
            g_sen[lo_idx].iq17_127_value = ((val - min_val) * 127.0f) / denom;
        }

        if (g_sen[lo_idx].iq17_127_value < 35.0f) {
            g_sen[lo_idx].iq17_ON_OFF_value = 0.0f;
        } else {
            g_sen[lo_idx].iq17_ON_OFF_value = 1.0f;
        }

        if (g_sen[lo_idx].iq17_127_value > 60.0f) {
            g_pos.u16state |= g_sen[lo_idx].u16active_arr;
            g_Flag.lineout_flag = OFF;
        } else {
            g_pos.u16state &= g_sen[lo_idx].u16passive_arr;
        }
    }

    g_int32_isr_cnt++;

    if (g_Flag.motor) {
        g_i32_Time_index++;

        if (++LMotor.u32_Period_Cnt >= LMotor.u32_Period) {
            Motor_CalBaseMotionValue(&LMotor);
            g_u32_L_index++;
            left_motor_step(g_u32_L_index);
            L_Motor_ON(&LMotor);
        }

        if (++RMotor.u32_Period_Cnt >= RMotor.u32_Period) {
            Motor_CalBaseMotionValue(&RMotor);
            g_u32_R_index++;
            right_motor_step(g_u32_R_index);
            R_Motor_ON(&RMotor);
        }
    } else {
        motor_stop_all();
    }

    g_adc_step++;
    if (g_adc_step >= SEN_NUM) {
        g_adc_step = 0;
    }
    g_scan_step = g_adc_step;
    sensor_led_on(&scan_table[g_scan_step].led);
}

void sensor_adc_irq_handler(void)
{
    uint32_t adc1_isr = ADC1->ISR;
    uint32_t adc2_isr = ADC2->ISR;

    if (((adc1_isr | adc2_isr) & ADC_ISR_OVR) != 0U) {
        sensor_adc_recover_from_error();
        return;
    }

    if ((adc2_isr & ADC_ISR_EOC) != 0U) {
        uint32_t val_hi = LL_ADC_REG_ReadConversionData12(ADC1);
        uint32_t val_lo = LL_ADC_REG_ReadConversionData12(ADC2);

        LL_ADC_ClearFlag_EOC(ADC1);
        LL_ADC_ClearFlag_EOS(ADC1);
        LL_ADC_ClearFlag_EOC(ADC2);
        LL_ADC_ClearFlag_EOS(ADC2);

        sensor_process_adc_step(val_hi, val_lo);
    }
}

void sensor_tim2_irq_handler(void)
{
    if (LL_TIM_IsActiveFlag_UPDATE(TIM2) != 0U) {
        LL_TIM_ClearFlag_UPDATE(TIM2);
    }
    if (LL_TIM_IsActiveFlag_CC2(TIM2) != 0U) {
        LL_TIM_ClearFlag_CC2(TIM2);
    }
}
void sen_vari_init(void)
{
    int16_t sen_value_setting= 0;

    memset((void *)&g_sen, 0x00, sizeof(sen_t) * 16);
    memset((void *)&g_pos, 0x00, sizeof(position_t));
    memset((void *)&g_rmark, 0x00, sizeof(turnmark_t));
    memset((void *)&g_lmark, 0x00, sizeof(turnmark_t));    
    
    for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )    
        g_sen[sen_value_setting].iq17_4095_min_value = 4095.0f;

    g_sen[ 15 ].iq7weight = 16000.0f;       g_sen[ 0 ].u16active_arr = 0x8000;      g_sen[ 0 ].u16passive_arr = 0x7fff;
    g_sen[ 14 ].iq7weight = 13000.0f;       g_sen[ 1 ].u16active_arr = 0x4000;      g_sen[ 1 ].u16passive_arr = 0xbfff;
    g_sen[ 13 ].iq7weight = 11000.0f;       g_sen[ 2 ].u16active_arr = 0x2000;      g_sen[ 2 ].u16passive_arr = 0xdfff;
    g_sen[ 12 ].iq7weight = 8900.0f;        g_sen[ 3 ].u16active_arr = 0x1000;      g_sen[ 3 ].u16passive_arr = 0xefff;    
    g_sen[ 11 ].iq7weight = 7000.0f;        g_sen[ 4 ].u16active_arr = 0x0800;      g_sen[ 4 ].u16passive_arr = 0xf7ff;    
    g_sen[ 10 ].iq7weight = 4000.0f;        g_sen[ 5 ].u16active_arr = 0x0400;      g_sen[ 5 ].u16passive_arr = 0xfbff;    
    g_sen[ 9 ].iq7weight = 2500.0f;         g_sen[ 6 ].u16active_arr = 0x0200;      g_sen[ 6 ].u16passive_arr = 0xfdff; 
    g_sen[ 8 ].iq7weight = 500.0f;          g_sen[ 7 ].u16active_arr = 0x0100;      g_sen[ 7 ].u16passive_arr = 0xfeff;
    g_sen[ 7 ].iq7weight = -500.0f;         g_sen[ 8 ].u16active_arr = 0x0080;      g_sen[ 8 ].u16passive_arr = 0xff7f;
    g_sen[ 6 ].iq7weight = -2500.0f;        g_sen[ 9 ].u16active_arr = 0x0040;      g_sen[ 9 ].u16passive_arr = 0xffbf;
    g_sen[ 5 ].iq7weight = -4000.0f;        g_sen[ 10 ].u16active_arr = 0x0020;     g_sen[ 10 ].u16passive_arr = 0xffdf;
    g_sen[ 4 ].iq7weight = -7000.0f;        g_sen[ 11 ].u16active_arr = 0x0010;     g_sen[ 11 ].u16passive_arr = 0xffef;
    g_sen[ 3 ].iq7weight = -8900.0f;        g_sen[ 12 ].u16active_arr = 0x0008;     g_sen[ 12 ].u16passive_arr = 0xfff7;
    g_sen[ 2 ].iq7weight = -11000.0f;       g_sen[ 13 ].u16active_arr = 0x0004;     g_sen[ 13 ].u16passive_arr = 0xfffb;
    g_sen[ 1 ].iq7weight = -13000.0f;       g_sen[ 14 ].u16active_arr = 0x0002;     g_sen[ 14 ].u16passive_arr = 0xfffd;
    g_sen[ 0 ].iq7weight = -16000.0f;       g_sen[ 15 ].u16active_arr = 0x0001;     g_sen[ 15 ].u16passive_arr = 0xfffe;

    maxmin_read_rom();
}

static void position_enable(position_t *ppos)
{
    if( g_pos.iq7temp_pos < g_sen[ 0 ].iq7weight ) 
    {
        g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 8;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 15 ].iq7weight ) 
    {
        g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 8;
    }
    else if( g_pos.iq7temp_pos < g_sen[ 1 ].iq7weight )
    {
        g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 7;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 14 ].iq7weight )
    {
        g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 7;
    }
    else if( g_pos.iq7temp_pos < g_sen[ 2 ].iq7weight )
    {
        g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 6;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 13 ].iq7weight )
    {
        g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 6;
    }
    else if( g_pos.iq7temp_pos < g_sen[ 3 ].iq7weight )
    {
        g_u16pos_cnt = 1;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 5;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 12 ].iq7weight )
    {
        g_u16pos_cnt = 11;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 5;
    }
    else if( g_pos.iq7temp_pos < g_sen[ 4 ].iq7weight )
    {
        g_u16pos_cnt = 2;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 4;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 11 ].iq7weight )
    {
        g_u16pos_cnt = 10;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 4;
    }
    else if( g_pos.iq7temp_pos < g_sen[ 5 ].iq7weight )
    {
        g_u16pos_cnt = 3;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 3;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 10 ].iq7weight )
    {
        g_u16pos_cnt = 9;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 3;
    }
    else if( g_pos.iq7temp_pos < g_sen[ 6 ].iq7weight )
    {
        g_u16pos_cnt = 4;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 2;
    }
    else if( g_pos.iq7temp_pos > g_sen[ 9 ].iq7weight )
    {
        g_u16pos_cnt = 8;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 2;
    }
    else if( g_pos.iq7temp_pos <= g_sen[ 7 ].iq7weight )
    {
        g_u16pos_cnt = 5;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 1;
    }
    else if( g_pos.iq7temp_pos >= g_sen[ 8 ].iq7weight )
    {
        g_u16pos_cnt = 7;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 1;
    }
    else if( g_pos.iq7temp_pos < g_sen[8].iq7weight && g_pos.iq7temp_pos > g_sen[7].iq7weight)
    {
        g_u16pos_cnt = 6;
        g_shift.u16sen_enable = 0;
        g_shift.u16sen_state = 0;
    }
}

static int32_t cross_check( void )
{
    volatile uint16_t state = 0x00;
    volatile uint16_t condition1 = 0x00;
    volatile uint16_t condition2 = 0x00;
    volatile uint16_t condition3 = 0x00;
    
    if( g_shift.u16sen_enable & RIGHT_ENABLE ) 
        state = (uint16_t)9 + g_shift.u16sen_state;
    else if( g_shift.u16sen_enable & LEFT_ENABLE) 
        state = (uint16_t)9 - g_shift.u16sen_state;
    else    
        state = (uint16_t)9;
    
    if(state < 1 || state > 16) return 1;

    condition1 = (( g_pos.u16state & state_table[ state ] ) == state_table[ state ] );
    condition2 = (( g_pos.u16state & state_table[ state - 1 ] ) == state_table[ state - 1 ]);
    condition3 = (( g_pos.u16state & state_table[ state + 1 ] ) == state_table[ state + 1 ]);
    
    if( condition1 || condition2 || condition3 )
    {
        if( g_Flag.cross_flag == OFF)
        { 
            g_Flag.cross_flag = ON;
        }
    }
    else if( g_Flag.cross_flag == ON )
    {    
        // L_LED_ON;
        // R_LED_ON;
        // if(g_Flag.second_race) BLUE_ON;
        
        g_q15cross_dist = ( RMotor.iq15Cross_Check_Dist + LMotor.iq15Cross_Check_Dist ) * 0.5f;
        if( g_q15cross_dist > 140.0f )
        {    
            // L_LED_OFF;
            // R_LED_OFF;
            if((search_info[U16_turnmark_cnt].int32cross_check_dist == 0) && (g_Flag.first_race == ON))
                search_info[U16_turnmark_cnt].int32cross_check_dist = (int32_t)((RMotor.iq15GoneDist + LMotor.iq15GoneDist) * 0.5f) - 140;
            
            g_Flag.cross_flag= OFF;                                            
            g_lmark.u16turn_flag = g_rmark.u16turn_flag = OFF;                        
            g_lmark.iq17turnmark_dist = g_rmark.iq17turnmark_dist = 0.0f;        
            LMotor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = 0.0f;
            g_q15cross_dist = 0.0f;                                     
        }
    }
    else
    {
        LMotor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = 0.0f;
        g_q15cross_dist = 0.0f;
    }
    return 1;
}

static void mark_enable_shift( turnmark_t *pleft , turnmark_t *pright )
{
    if( g_shift.u16sen_enable & RIGHT_ENABLE )  
    {
        pleft->u16mark_enable = LEFT_ENABLE >> g_shift.u16sen_state;
        pright->u16mark_enable = RIGHT_ENABLE >> g_shift.u16sen_state;
    }
    else if( g_shift.u16sen_enable & LEFT_ENABLE )  
    {
        pleft->u16mark_enable = LEFT_ENABLE << g_shift.u16sen_state;
        pright->u16mark_enable = RIGHT_ENABLE >> g_shift.u16sen_state;
    }
    else
    {
        pleft->u16mark_enable = LEFT_ENABLE;
        pright->u16mark_enable = RIGHT_ENABLE;
    }
}

void make_position(void)
{
    g_pos.iq17sum = 0.0f;
    g_pos.iq7sum_of_sec = 0.0f;

    g_pos.iq17sum += g_sen[g_u16pos_cnt + 0].iq17_127_value;
    g_pos.iq17sum += g_sen[g_u16pos_cnt + 1].iq17_127_value;
    g_pos.iq17sum += g_sen[g_u16pos_cnt + 2].iq17_127_value;
    g_pos.iq17sum += g_sen[g_u16pos_cnt + 3].iq17_127_value;
        
    g_pos.iq7sum = g_pos.iq17sum;
    
    if( g_pos.iq17sum > 0.0f )
    {    
        cross_check(); 
        
        g_pos.iq7sum_of_sec += g_sen[g_u16pos_cnt + 0].iq7weight * g_sen[g_u16pos_cnt + 0].iq17_127_value;
        g_pos.iq7sum_of_sec += g_sen[g_u16pos_cnt + 1].iq7weight * g_sen[g_u16pos_cnt + 1].iq17_127_value;
        g_pos.iq7sum_of_sec += g_sen[g_u16pos_cnt + 2].iq7weight * g_sen[g_u16pos_cnt + 2].iq17_127_value;
        g_pos.iq7sum_of_sec += g_sen[g_u16pos_cnt + 3].iq7weight * g_sen[g_u16pos_cnt + 3].iq17_127_value;

        g_pos.iq7temp_pos = g_pos.iq7sum_of_sec / g_pos.iq7sum;

        if( g_pos.iq7temp_pos >= POS_END )
            g_pos.iq7temp_pos = POS_END;
        else if( g_pos.iq7temp_pos <= -POS_END )
            g_pos.iq7temp_pos = -POS_END;
        
        g_pos.iq10temp_position = g_pos.iq7temp_pos;
        
        position_enable(&g_pos);        
    }
}

void Handle( void )
{
    if( g_pos.iq10temp_position > 0.0f )        // right
    {
        LMotor.iqHandle = 1.0f - (g_pos.iq10temp_position * g_q17_handle_acc);    
        RMotor.iqHandle = 1.0f + (g_pos.iq10temp_position * g_q17_handle_dec);    

        if( RMotor.iqHandle <= 0.0f )
            LMotor.iqHandle = 0.0f;
    }
    else if( g_pos.iq10temp_position < 0.0f )        // left
    {
        LMotor.iqHandle = 1.0f - (g_pos.iq10temp_position * g_q17_handle_dec);   
        RMotor.iqHandle = 1.0f + (g_pos.iq10temp_position * g_q17_handle_acc);   

        if( LMotor.iqHandle <= 0.0f )
            RMotor.iqHandle = 0.0f;
    }
    else
    {
        RMotor.iqHandle = 1.0f;
        LMotor.iqHandle = 1.0f;
    }
}

void turn_decide( turnmark_t *pmark , turnmark_t *premark )
{
    turnmark_t *p_mark = pmark;
    turnmark_t *p_remark = premark;
    
    if(p_mark->u16single_flag == ON)
    {
        if( p_mark->iq17turnmark_dist > p_mark->iq17limit_dist ) 
        {
            if( p_mark == &g_lmark)
            {
                // L_LED_OFF;
                // BLUE_OFF;
                if( p_remark->u16single_flag == ON ) return;
            }
            else if( p_mark == &g_rmark )
            {
                // R_LED_OFF;
                // BLUE_OFF;
            }
            
            p_mark->u16single_flag = OFF;
            p_mark->u16turn_flag = OFF;
            p_mark->iq17turnmark_dist = 0.0f;

            if( p_mark->u16cross_flag )
            {
                p_mark->u16cross_flag = OFF;
                if( p_mark == &g_rmark )
                {            
                    if( g_Flag.cross_flag) return;
                    start_end_check();
                }
            }
            else
            {
                if( (!g_Flag.move_state) || g_Flag.cross_flag) return;

                if(g_Flag.first_race)
                {
                    line_info(p_mark);
                }
                else if(g_Flag.second_race)
                {
                    second_info(search_info);
                }
            }
        }
        else if( p_remark->u16single_flag )
            p_mark->u16cross_flag = ON;

        return;
    }

    mark_enable_shift( &g_lmark, &g_rmark );
    
    if( p_mark->u16mark_enable & g_pos.u16state )
    {
        if(p_mark->u16turn_flag == OFF)
        {
            RMotor.iq17Turnmark_Check_Dist = 0.0f;
            LMotor.iq17Turnmark_Check_Dist = 0.0f;
            p_mark->iq17turnmark_dist = 0.0f;

            p_mark->iq17limit_dist = p_mark->iq17turnmark_dist + 3.0f;
            p_mark->u16turn_flag = ON;
        }
        else if( p_mark->iq17turnmark_dist > p_mark->iq17limit_dist )
        {    
            p_mark->u16single_flag = ON;
            p_mark->iq17limit_dist = p_mark->iq17turnmark_dist + (float)g_u16turn_dist;

            if(g_Flag.cross_flag == OFF)
            {
                if(p_mark == &g_lmark) 
                {
                    // L_LED_ON;
                }
                else if(p_mark == &g_rmark)     
                {
                    // R_LED_ON;
                }
            }
        }
    }
    else
    {
        p_mark->iq17turnmark_dist = 0.0f;
        p_mark->u16turn_flag = OFF;
    }
}

void start_end_check(void)
{
    if(!g_Flag.race_start)
    {
        if( g_Flag.first_race )
            search_info[0].int32turn_way = STRAIGHT;
        g_Flag.race_start = ON;
        g_i32_Time_index = 0;
        U16_turnmark_cnt = 0;
        // BLUE_ON;    
    }
    else 
    {
        if( U16_turnmark_cnt < 1 ) return; 
        
        g_Flag.move_state = OFF;
        
        if(g_Flag.first_race)
        {
            move_to_end( 200.0f, 0.0f, g_u32_END_ACC_targetval);
            OLED_Printf(0U, 0U, " END_ON ");
            OLED_Printf(0U, 0U, "T:%3.2f", g_fp32time);
        }
        else if(g_Flag.second_race)
        {
            OLED_Printf(0U, 0U, "2nd  END");
            move_to_end( 200.0f, 0.0f, g_u32_END_ACC_targetval);
            LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0.0f;
            OLED_Printf(0U, 0U, "T:%3.2f", g_fp32time);
        }

        LMotor.iq17distance_sum = RMotor.iq17distance_sum = 0.0f;
        g_Flag.stop_check = ON;
    }    
}

void line_info(turnmark_t *p_mark)
{
    search_info[U16_turnmark_cnt].int32L_dist = (int32_t)(LMotor.iq15GoneDist);
    search_info[U16_turnmark_cnt].int32R_dist = (int32_t)(RMotor.iq15GoneDist);
    search_info[U16_turnmark_cnt].int32dist = (search_info[U16_turnmark_cnt].int32L_dist + search_info[U16_turnmark_cnt].int32R_dist) / 2;

    if( p_mark == NULL ) search_info[U16_turnmark_cnt].int32turn_way = END_TURN;

    U16_turnmark_cnt++; 
                                                
    search_info[U16_turnmark_cnt].int32turn_way = (p_mark == &g_lmark) ? LEFT_TURN : RIGHT_TURN;
    
    if( U16_turnmark_cnt && search_info[U16_turnmark_cnt].int32turn_way == search_info[U16_turnmark_cnt-1].int32turn_way )
        search_info[U16_turnmark_cnt].int32turn_way = STRAIGHT;

    LMotor.iq17distance_sum = RMotor.iq17distance_sum = 0.0f;
    LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0.0f;    
}

void F_4095()
{
    uint8_t page_idx = 0; // 0: S0~S7, 1: S8~S15
    OLED_Clear();

    do
    {
        if (!SW_R || !SW_L)
        {
            page_idx = !page_idx;
            OLED_Clear();
            LL_mDelay(200);
        }

        char buf_left[16];
        char buf_right[16];

        if (page_idx == 0)
        {
            for (uint8_t row = 0; row < 4; row++)
            {
                snprintf(buf_left, sizeof(buf_left), "S%d:%4d", row, (int)(g_sen[row].iq17_4095_value));
                snprintf(buf_right, sizeof(buf_right), "S%d:%4d", row + 4, (int)(g_sen[row + 4].iq17_4095_value));
                OLED_Print(row, 0U, buf_left);
                OLED_Print(row, 11U, buf_right);
            }
        }
        else
        {
            for (uint8_t row = 0; row < 4; row++)
            {
                snprintf(buf_left, sizeof(buf_left), "S%d:%4d", row + 8, (int)(g_sen[row + 8].iq17_4095_value));
                snprintf(buf_right, sizeof(buf_right), "S%d:%4d", row + 12, (int)(g_sen[row + 12].iq17_4095_value));
                OLED_Print(row, 0U, buf_left);
                OLED_Print(row, 11U, buf_right);
            }
        }

        OLED_Update();
        LL_mDelay(20);
    } while(SW_D); 

    a = 2;
}

void F_Max_min()
{
    int16_t sen_value_setting = 0;
    
    OLED_Printf(0U, 0U, "LOADING_");
    LL_mDelay(500);

    for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
    {
        g_sen[sen_value_setting].iq17_4095_max_value = 0.0f;
        g_sen[sen_value_setting].iq17_4095_min_value = 4095.0f;
    }

    while(SW_R)
    {
        OLED_Printf(0U, 0U, "Set_MAX_");
        for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
        {
            if (g_sen[sen_value_setting].iq17_4095_max_value < g_sen[sen_value_setting].iq17_4095_value)
                g_sen[sen_value_setting].iq17_4095_max_value = g_sen[sen_value_setting].iq17_4095_value;
        }
    }
    
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "Set_MIN_");
        for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
        {
            if (g_sen[sen_value_setting].iq17_4095_min_value > g_sen[sen_value_setting].iq17_4095_value)
                g_sen[sen_value_setting].iq17_4095_min_value = g_sen[sen_value_setting].iq17_4095_value;
        }
    }
    maxmin_write_rom();
    LL_mDelay(125);
}

void F_127()
{    
    OLED_Clear();
    
    do
    {
        float sensor_vals[16];
        for (int i = 0; i < 16; i++)
        {
            sensor_vals[i] = g_sen[i].iq17_127_value;
        }

        OLED_DrawSensorBars(sensor_vals);
        LL_mDelay(10);
    } while(SW_D); 

    a = 3;
}

void F_POSCHECK()
{
    OLED_Printf(0U, 0U, "POSCHECK");
    LL_mDelay(500);
    g_u16pos_cnt=6;

    while(SW_D) 
    {
        g_pos.iq17sum = 0.0f;
        g_pos.iq7sum_of_sec = 0.0f;

        g_pos.iq17sum += g_sen[g_u16pos_cnt + 0].iq17_127_value;
        g_pos.iq17sum += g_sen[g_u16pos_cnt + 1].iq17_127_value;
        g_pos.iq17sum += g_sen[g_u16pos_cnt + 2].iq17_127_value;
        g_pos.iq17sum += g_sen[g_u16pos_cnt + 3].iq17_127_value;

        g_pos.iq7sum = g_pos.iq17sum;

        if( g_pos.iq17sum > 0.0f )
        {    
            g_pos.iq7sum_of_sec += g_sen[ g_u16pos_cnt + 0 ].iq7weight * g_sen[ g_u16pos_cnt + 0 ].iq17_127_value;
            g_pos.iq7sum_of_sec += g_sen[ g_u16pos_cnt + 1 ].iq7weight * g_sen[ g_u16pos_cnt + 1 ].iq17_127_value;
            g_pos.iq7sum_of_sec += g_sen[ g_u16pos_cnt + 2 ].iq7weight * g_sen[ g_u16pos_cnt + 2 ].iq17_127_value;
            g_pos.iq7sum_of_sec += g_sen[ g_u16pos_cnt + 3 ].iq7weight * g_sen[ g_u16pos_cnt + 3 ].iq17_127_value;

            g_pos.iq7temp_pos = g_pos.iq7sum_of_sec / g_pos.iq7sum;

            if( g_pos.iq7temp_pos >= POS_END )    
                g_pos.iq7temp_pos = POS_END;
            else if( g_pos.iq7temp_pos <= -POS_END )     
                g_pos.iq7temp_pos = -POS_END;
            
            g_pos.iq10temp_position = g_pos.iq7temp_pos;

            position_enable(&g_pos);

            OLED_Printf(0U, 0U, "P:%6.0f", g_pos.iq10temp_position);
        }
    }
    a=4;
}

void F_TURNMARK()
{
    read_mark_cnt_rom();
    read_line_info_rom();
    cnt=0;
    OLED_Printf(0U, 0U, "MARK:%ld",g_int32total_cnt);

    LL_mDelay(1000);
    OLED_Printf(0U, 0U, "        ");
    
    while(SW_D)    
    {
        LL_mDelay(135);
        
        if(!SW_R) cnt++;
        else if(!SW_L) cnt--;
        else if(!SW_U) cnt+=10;

        OLED_Printf(0U, 0U, "T%d:%3lu", cnt, search_info[cnt].int32turn_way);
    }
}

int line_out_func(void)
{
    if( g_pos.iq17sum == 0.0f )
    {    
        g_int32_lineout_cnt++;
        if( g_int32_lineout_cnt < 1000 ) return 0;  // Delay

        g_int32_lineout_cnt = 0;

        g_Flag.move_state = OFF;

        LMotor.iqTargetV = RMotor.iqTargetV = 0.0f;
        LMotor.iqTargetA = RMotor.iqTargetA = 8000.0f;

        motor_stop_all();

        OLED_Printf(0U, 0U, "Line Out");
        
        while(1)
        {
            // Halt
        }
    }
    else
    {    
        g_int32_lineout_cnt = 0;
    }

    return 0;
}
