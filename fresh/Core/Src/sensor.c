#include "sensor.h"
#include "motor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
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
    if (LL_ADC_REG_IsConversionOngoing(ADC1) == 0U) {
        LL_ADC_REG_StartConversion(ADC1);
    }
    if (LL_ADC_REG_IsConversionOngoing(ADC2) == 0U) {
        LL_ADC_REG_StartConversion(ADC2);
    }
}

static void sensor_tim2_start_trigger(void)
{
    LL_TIM_ClearFlag_UPDATE(TIM2);
    LL_TIM_ClearFlag_CC2(TIM2);
    LL_TIM_SetCounter(TIM2, 0U);
    LL_TIM_EnableIT_UPDATE(TIM2);
    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH2);
    LL_TIM_EnableCounter(TIM2);
}

static void sensor_tim2_stop_trigger(void)
{
    LL_TIM_DisableCounter(TIM2);
    LL_TIM_DisableIT_UPDATE(TIM2);
    LL_TIM_DisableIT_CC2(TIM2);
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

    sensor_adc_clear_flags();
    sensor_adc_start_pair();
    Sensor_Value();
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
    Sensor_Value();
    sensor_tim2_start_trigger();
}

static void sensor_process_adc_step(uint32_t val_hi, uint32_t val_lo)
{
    uint8_t step = g_adc_step;
    const scan_step_t *p_step = &scan_table[step];
    uint8_t hi_idx = p_step->sen_hi_idx;
    uint8_t lo_idx = p_step->sen_lo_idx;

    g_sen[hi_idx].fp32_4095_value = (float)val_hi;
    g_sen[lo_idx].fp32_4095_value = (float)val_lo;

    sensor_led_off(&p_step->led);

    {
        // TODO: 127 스케일 매핑 및 라인 감지(ON/OFF) 로직을 구현.
        // 1. g_sen[hi_idx].fp32_4095_value 값을 최댓값(max_value)과 최솟값(min_value) 기준에 맞춰
        //    0.0f ~ 127.0f 범위로 비례 변환하여 g_sen[hi_idx].fp32_127_value 에 저장. (최대/최소 범위를 벗어나는 예외 처리 필요)

        g_sen[hi_idx].fp32_127_value = 0.0f; // 임시값 (직접 구현)

        if (g_sen[hi_idx].fp32_127_value > 60.0f) {
            g_pos.u16state |= g_sen[hi_idx].u16active_arr;
            g_Flag.lineout_flag = OFF;
        } else {
            g_pos.u16state &= g_sen[hi_idx].u16passive_arr;
        }

    }

    {
        // TODO:  g_sen[lo_idx]에 대해서도 위와 동일하게 127 매핑 및 라인 감지 상태 갱신 로직을 구현.
        g_sen[lo_idx].fp32_127_value = 0.0f; // 임시값 (직접 구현)

        if (g_sen[lo_idx].fp32_127_value > 60.0f) {
            g_pos.u16state |= g_sen[lo_idx].u16active_arr;
            g_Flag.lineout_flag = OFF;
        } else {
            g_pos.u16state &= g_sen[lo_idx].u16passive_arr;
        }

    }

    g_u32_isr_cnt++;

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
}

void adc_timer_ISR(void)
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

void Sensor_Value(void)
{
    if (g_adc_step >= SEN_NUM) {
        g_adc_step = 0;
    }

    g_scan_step = g_adc_step;
    sensor_set_active_step(g_scan_step);
}

void sensor_adc_irq_handler(void)
{
    adc_timer_ISR();
}

void sensor_tim2_irq_handler(void)
{
    if (LL_TIM_IsActiveFlag_UPDATE(TIM2) != 0U) {
        LL_TIM_ClearFlag_UPDATE(TIM2);
        Sensor_Value();
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
        g_sen[sen_value_setting].fp32_4095_min_value = 4095.0f;

    g_sen[ 15 ].fp32weight = 16000.0f;       g_sen[ 0 ].u16active_arr = 0x8000;      g_sen[ 0 ].u16passive_arr = 0x7fff;
    g_sen[ 14 ].fp32weight = 13000.0f;       g_sen[ 1 ].u16active_arr = 0x4000;      g_sen[ 1 ].u16passive_arr = 0xbfff;
    g_sen[ 13 ].fp32weight = 11000.0f;       g_sen[ 2 ].u16active_arr = 0x2000;      g_sen[ 2 ].u16passive_arr = 0xdfff;
    g_sen[ 12 ].fp32weight = 8900.0f;        g_sen[ 3 ].u16active_arr = 0x1000;      g_sen[ 3 ].u16passive_arr = 0xefff;
    g_sen[ 11 ].fp32weight = 7000.0f;        g_sen[ 4 ].u16active_arr = 0x0800;      g_sen[ 4 ].u16passive_arr = 0xf7ff;
    g_sen[ 10 ].fp32weight = 4000.0f;        g_sen[ 5 ].u16active_arr = 0x0400;      g_sen[ 5 ].u16passive_arr = 0xfbff;
    g_sen[ 9 ].fp32weight = 2500.0f;         g_sen[ 6 ].u16active_arr = 0x0200;      g_sen[ 6 ].u16passive_arr = 0xfdff;
    g_sen[ 8 ].fp32weight = 500.0f;          g_sen[ 7 ].u16active_arr = 0x0100;      g_sen[ 7 ].u16passive_arr = 0xfeff;
    g_sen[ 7 ].fp32weight = -500.0f;         g_sen[ 8 ].u16active_arr = 0x0080;      g_sen[ 8 ].u16passive_arr = 0xff7f;
    g_sen[ 6 ].fp32weight = -2500.0f;        g_sen[ 9 ].u16active_arr = 0x0040;      g_sen[ 9 ].u16passive_arr = 0xffbf;
    g_sen[ 5 ].fp32weight = -4000.0f;        g_sen[ 10 ].u16active_arr = 0x0020;     g_sen[ 10 ].u16passive_arr = 0xffdf;
    g_sen[ 4 ].fp32weight = -7000.0f;        g_sen[ 11 ].u16active_arr = 0x0010;     g_sen[ 11 ].u16passive_arr = 0xffef;
    g_sen[ 3 ].fp32weight = -8900.0f;        g_sen[ 12 ].u16active_arr = 0x0008;     g_sen[ 12 ].u16passive_arr = 0xfff7;
    g_sen[ 2 ].fp32weight = -11000.0f;       g_sen[ 13 ].u16active_arr = 0x0004;     g_sen[ 13 ].u16passive_arr = 0xfffb;
    g_sen[ 1 ].fp32weight = -13000.0f;       g_sen[ 14 ].u16active_arr = 0x0002;     g_sen[ 14 ].u16passive_arr = 0xfffd;
    g_sen[ 0 ].fp32weight = -16000.0f;       g_sen[ 15 ].u16active_arr = 0x0001;     g_sen[ 15 ].u16passive_arr = 0xfffe;

    maxmin_read_rom();
}

static void position_enable(position_t *ppos)
{
    if( g_pos.fp32temp_pos < g_sen[ 0 ].fp32weight )
    {
        g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 8;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 15 ].fp32weight )
    {
        g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 8;
    }
    else if( g_pos.fp32temp_pos < g_sen[ 1 ].fp32weight )
    {
        g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 7;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 14 ].fp32weight )
    {
        g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 7;
    }
    else if( g_pos.fp32temp_pos < g_sen[ 2 ].fp32weight )
    {
        g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 6;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 13 ].fp32weight )
    {
        g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 6;
    }
    else if( g_pos.fp32temp_pos < g_sen[ 3 ].fp32weight )
    {
        g_u16pos_cnt = 1;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 5;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 12 ].fp32weight )
    {
        g_u16pos_cnt = 11;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 5;
    }
    else if( g_pos.fp32temp_pos < g_sen[ 4 ].fp32weight )
    {
        g_u16pos_cnt = 2;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 4;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 11 ].fp32weight )
    {
        g_u16pos_cnt = 10;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 4;
    }
    else if( g_pos.fp32temp_pos < g_sen[ 5 ].fp32weight )
    {
        g_u16pos_cnt = 3;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 3;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 10 ].fp32weight )
    {
        g_u16pos_cnt = 9;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 3;
    }
    else if( g_pos.fp32temp_pos < g_sen[ 6 ].fp32weight )
    {
        g_u16pos_cnt = 4;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 2;
    }
    else if( g_pos.fp32temp_pos > g_sen[ 9 ].fp32weight )
    {
        g_u16pos_cnt = 8;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 2;
    }
    else if( g_pos.fp32temp_pos <= g_sen[ 7 ].fp32weight )
    {
        g_u16pos_cnt = 5;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 1;
    }
    else if( g_pos.fp32temp_pos >= g_sen[ 8 ].fp32weight )
    {
        g_u16pos_cnt = 7;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 1;
    }
    else if( g_pos.fp32temp_pos < g_sen[8].fp32weight && g_pos.fp32temp_pos > g_sen[7].fp32weight)
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

        g_fp32_cross_dist = ( RMotor.fp32cross_check_dist + LMotor.fp32cross_check_dist ) * 0.5f;
        if( g_fp32_cross_dist > 140.0f )
        {
            // L_LED_OFF;
            // R_LED_OFF;
            if((search_info[g_u16_turnmark_cnt].int32cross_check_dist == 0) && (g_Flag.first_race == ON))
                search_info[g_u16_turnmark_cnt].int32cross_check_dist = (int32_t)((RMotor.fp32gone_dist + LMotor.fp32gone_dist) * 0.5f) - 140;

            g_Flag.cross_flag= OFF;
            g_lmark.u16turn_flag = g_rmark.u16turn_flag = OFF;
            g_lmark.fp32turnmark_dist = g_rmark.fp32turnmark_dist = 0.0f;
            LMotor.fp32cross_check_dist = RMotor.fp32cross_check_dist = 0.0f;
            g_fp32_cross_dist = 0.0f;
        }
    }
    else
    {
        LMotor.fp32cross_check_dist = RMotor.fp32cross_check_dist = 0.0f;
        g_fp32_cross_dist = 0.0f;
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
    g_pos.fp32sensor_sum = 0.0f;
    g_pos.fp32weighted_sum = 0.0f;

    g_pos.fp32sensor_sum += g_sen[g_u16pos_cnt + 0].fp32_127_value;
    g_pos.fp32sensor_sum += g_sen[g_u16pos_cnt + 1].fp32_127_value;
    g_pos.fp32sensor_sum += g_sen[g_u16pos_cnt + 2].fp32_127_value;
    g_pos.fp32sensor_sum += g_sen[g_u16pos_cnt + 3].fp32_127_value;

    g_pos.fp32position_sum = g_pos.fp32sensor_sum;

    if( g_pos.fp32sensor_sum > 0.0f )
    {
        cross_check();

        g_pos.fp32weighted_sum += g_sen[g_u16pos_cnt + 0].fp32weight * g_sen[g_u16pos_cnt + 0].fp32_127_value;
        g_pos.fp32weighted_sum += g_sen[g_u16pos_cnt + 1].fp32weight * g_sen[g_u16pos_cnt + 1].fp32_127_value;
        g_pos.fp32weighted_sum += g_sen[g_u16pos_cnt + 2].fp32weight * g_sen[g_u16pos_cnt + 2].fp32_127_value;
        g_pos.fp32weighted_sum += g_sen[g_u16pos_cnt + 3].fp32weight * g_sen[g_u16pos_cnt + 3].fp32_127_value;

        g_pos.fp32temp_pos = g_pos.fp32weighted_sum / g_pos.fp32position_sum;

        if( g_pos.fp32temp_pos >= POS_END )
            g_pos.fp32temp_pos = POS_END;
        else if( g_pos.fp32temp_pos <= -POS_END )
            g_pos.fp32temp_pos = -POS_END;

        g_pos.fp32temp_position = g_pos.fp32temp_pos;

        position_enable(&g_pos);
    }
}

void Handle( void )
{
    if( g_pos.fp32temp_position > 0.0f )        // right
    {
        LMotor.fp32handle = 1.0f - (g_pos.fp32temp_position * g_fp32_handle_acc);
        RMotor.fp32handle = 1.0f + (g_pos.fp32temp_position * g_fp32_handle_dec);

        if( RMotor.fp32handle <= 0.0f )
            LMotor.fp32handle = 0.0f;
    }
    else if( g_pos.fp32temp_position < 0.0f )        // left
    {
        LMotor.fp32handle = 1.0f - (g_pos.fp32temp_position * g_fp32_handle_dec);
        RMotor.fp32handle = 1.0f + (g_pos.fp32temp_position * g_fp32_handle_acc);

        if( LMotor.fp32handle <= 0.0f )
            RMotor.fp32handle = 0.0f;
    }
    else
    {
        RMotor.fp32handle = 1.0f;
        LMotor.fp32handle = 1.0f;
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
        g_u16_turnmark_cnt = 0;
 
    }
    else
    {
        if( g_u16_turnmark_cnt < 140 ) return;

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
            LMotor.fp32gone_dist = RMotor.fp32gone_dist = 0.0f;
            OLED_Printf(0U, 0U, "T:%3.2f", g_fp32time);
        }

        LMotor.fp32distance_sum = RMotor.fp32distance_sum = 0.0f;
        g_Flag.stop_check = ON;
    }
}


void F_4095()
{
    // TODO
    // 16개 센서의 ADC 원시값(g_sen[i].fp32_4095_value)을 OLED 화면에 적절히 출력하는 디버깅 화면을 구현하.
    // 스위치 입력(예: SW_R, SW_L)을 활용해 페이지를 나누어 출력(S0~S7, S8~S15)하고, SW_D 입력 시 함수를 종료(return)하게 작성.
}

void F_Max_min()
{
    // TODO
    // 1. 모든 센서의 fp32_4095_max_value를 0.0f로, fp32_4095_min_value를 4095.0f로 초기화.
    // 2. SW_R(오른쪽 스위치)이 눌려 있는 동안 로봇을 좌우로 움직이며 각 센서의 최대 AD값을 수집하여 max_value에 업데이트.
    // 3. SW_D(아래쪽 스위치)가 눌려 있는 동안 각 센서의 최대 AD값을 수집하여 min_value에 업데이트.
    // 4. 수집이 완료되면 maxmin_write_rom()을 호출해 EEPROM(Flash)에 캘리브레이션 데이터를 저장.
}

void F_127()
{
    // TODO
    // 캘리브레이션 완료 후 0~127 범위로 스케일링된 센서 값(g_sen[i].fp32_127_value)을 OLED 화면에 텍스트 형태로 단순 출력해주는 화면을 작성.
    // SW_D 입력 시 함수가 종료.
}

void F_POSCHECK()
{
    // TODO
    // 1. 루프 안에서 make_position() 함수를 호출하여 현재 센서 기반 로봇의 물리적 위치(g_pos.fp32temp_position)를 실시간 연산.
    // 2. 연산된 위치 값을 OLED 화면에 단순 텍스트로 출력. (예: "P: %6d")
    // 3. SW_D 입력 시 루프를 탈출하여 함수를 종료하게 작성.
}

int line_out_func(void)
{
    if( g_pos.fp32sensor_sum == 0.0f )
    {
        g_u32_lineout_cnt++;
        if( g_u32_lineout_cnt < 1000 ) return 0;  // Delay

        g_u32_lineout_cnt = 0;

        g_Flag.move_state = OFF;

        LMotor.fp32target_vel = RMotor.fp32target_vel = 0.0f;
        LMotor.fp32target_accel = RMotor.fp32target_accel = 8000.0f;

        motor_stop_all();

        OLED_Printf(0U, 0U, "Line Out");

        while(1)
        {
            // Halt
        }
    }
    else
    {
        g_u32_lineout_cnt = 0;
    }

    return 0;
}
