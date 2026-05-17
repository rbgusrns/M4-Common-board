#include "sensor.h"
#include "motor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include "fastrun.h"
#include <math.h>
#include <string.h>

volatile uint8_t g_scan_step = 0;
volatile uint8_t g_dma_done_flags = 0;

static volatile uint16_t g_adc1_dma_buf[SEN_NUM];
static volatile uint16_t g_adc2_dma_buf[SEN_NUM];
static volatile uint16_t g_adc3_dma_buf[SEN_NUM];
static volatile uint16_t g_adc4_dma_buf[SEN_NUM];
static volatile uint16_t g_adc5_dma_buf[SEN_NUM];
static volatile uint8_t g_frame_ready = 0;

const scan_step_t scan_table[SEN_NUM] = {
    { { L0_GPIO_Port, L0_Pin }, &hadc3, &hadc1, ADC_CHANNEL_2,  ADC_CHANNEL_1,  7, 15 },
    { { L1_GPIO_Port, L1_Pin }, &hadc3, &hadc1, ADC_CHANNEL_4,  ADC_CHANNEL_2,  6, 14 },
    { { L2_GPIO_Port, L2_Pin }, &hadc4, &hadc1, ADC_CHANNEL_5,  ADC_CHANNEL_3,  5, 13 },
    { { L3_GPIO_Port, L3_Pin }, &hadc4, &hadc1, ADC_CHANNEL_12, ADC_CHANNEL_4,  4, 12 },
    { { L4_GPIO_Port, L4_Pin }, &hadc4, &hadc2, ADC_CHANNEL_13, ADC_CHANNEL_3,  3, 11 },
    { { L5_GPIO_Port, L5_Pin }, &hadc5, &hadc2, ADC_CHANNEL_7,  ADC_CHANNEL_4,  2, 10 },
    { { L6_GPIO_Port, L6_Pin }, &hadc5, &hadc2, ADC_CHANNEL_8,  ADC_CHANNEL_5,  1,  9 },
    { { L7_GPIO_Port, L7_Pin }, &hadc5, &hadc3, ADC_CHANNEL_9,  ADC_CHANNEL_1,  0,  8 },
};

static void sensor_emitters_off(void);
static void sensor_set_active_step(uint8_t step);
static void sensor_led_on(const led_pin_t *p_led);
static void sensor_led_off(const led_pin_t *p_led);
static volatile uint16_t *sensor_dma_buffer_for_adc(ADC_HandleTypeDef *hadc);
static uint8_t sensor_dma_mask_for_adc(ADC_HandleTypeDef *hadc);
static void sensor_copy_frame(void);
static void sensor_start_adc_dma(ADC_HandleTypeDef *hadc, volatile uint16_t *p_buf);

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
    GPIOC->BSRR = ((uint32_t)L0_Pin | (uint32_t)L1_Pin | (uint32_t)L2_Pin | (uint32_t)L6_Pin | (uint32_t)L7_Pin) << 16u;
    GPIOF->BSRR = ((uint32_t)L3_Pin | (uint32_t)L4_Pin | (uint32_t)L5_Pin) << 16u;
}

static void sensor_set_active_step(uint8_t step)
{
    const scan_step_t *p_step = &scan_table[step];

    sensor_emitters_off();
    sensor_led_on(&p_step->led);
}

static volatile uint16_t *sensor_dma_buffer_for_adc(ADC_HandleTypeDef *hadc)
{
    if (hadc == &hadc1) {
        return g_adc1_dma_buf;
    }

    if (hadc == &hadc2) {
        return g_adc2_dma_buf;
    }

    if (hadc == &hadc3) {
        return g_adc3_dma_buf;
    }

    if (hadc == &hadc4) {
        return g_adc4_dma_buf;
    }

    if (hadc == &hadc5) {
        return g_adc5_dma_buf;
    }

    return NULL;
}

static uint8_t sensor_dma_mask_for_adc(ADC_HandleTypeDef *hadc)
{
    if (hadc == &hadc1) {
        return 0x01u;
    }

    if (hadc == &hadc2) {
        return 0x02u;
    }

    if (hadc == &hadc3) {
        return 0x04u;
    }

    if (hadc == &hadc4) {
        return 0x08u;
    }

    if (hadc == &hadc5) {
        return 0x10u;
    }

    return 0u;
}

static void sensor_copy_frame(void)
{
    uint8_t step;

    for (step = 0; step < SEN_NUM; step++) {
        const scan_step_t *p_step = &scan_table[step];
        volatile uint16_t *p_hi_buf = sensor_dma_buffer_for_adc(p_step->hadc_hi);
        volatile uint16_t *p_lo_buf = sensor_dma_buffer_for_adc(p_step->hadc_lo);

        if ((p_hi_buf == NULL) || (p_lo_buf == NULL)) {
            Error_Handler();
        }

        g_sen[p_step->sen_hi_idx].iq17_4095_value = (float)p_hi_buf[step];
        g_sen[p_step->sen_lo_idx].iq17_4095_value = (float)p_lo_buf[step];
    }
}

static void sensor_start_adc_dma(ADC_HandleTypeDef *hadc, volatile uint16_t *p_buf)
{
    if (HAL_ADC_Start_DMA(hadc, (uint32_t *)p_buf, SEN_NUM) != HAL_OK) {
        Error_Handler();
    }
}

void sensor_scan_poll(void)
{
    __disable_irq();

    if (g_frame_ready == 0u) {
        __enable_irq();
        return;
    }

    g_frame_ready = 0u;
    __enable_irq();

    sensor_copy_frame();
    sensor_check_127();
    g_int32_isr_cnt++;
}

void sensor_scan_start(void)
{
    g_scan_step = 0;
    g_dma_done_flags = 0;
    g_frame_ready = 0;

    memset((void *)g_adc1_dma_buf, 0, sizeof(g_adc1_dma_buf));
    memset((void *)g_adc2_dma_buf, 0, sizeof(g_adc2_dma_buf));
    memset((void *)g_adc3_dma_buf, 0, sizeof(g_adc3_dma_buf));
    memset((void *)g_adc4_dma_buf, 0, sizeof(g_adc4_dma_buf));
    memset((void *)g_adc5_dma_buf, 0, sizeof(g_adc5_dma_buf));

    sensor_start_adc_dma(&hadc1, g_adc1_dma_buf);
    sensor_start_adc_dma(&hadc2, g_adc2_dma_buf);
    sensor_start_adc_dma(&hadc3, g_adc3_dma_buf);
    sensor_start_adc_dma(&hadc4, g_adc4_dma_buf);
    sensor_start_adc_dma(&hadc5, g_adc5_dma_buf);

    sensor_set_active_step(0);
    __HAL_TIM_SET_COUNTER(&htim2, 0);

    if (HAL_TIM_OC_Start(&htim2, TIM_CHANNEL_2) != HAL_OK) {
        Error_Handler();
    }

    if (HAL_TIM_Base_Start_IT(&htim2) != HAL_OK) {
        Error_Handler();
    }
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
    uint8_t prev_step;

    if (htim->Instance != TIM2) {
        return;
    }

    prev_step = g_scan_step;
    g_scan_step++;

    if (g_scan_step >= SEN_NUM) {
        g_scan_step = 0;
    }

    sensor_led_off(&scan_table[prev_step].led);
    sensor_led_on(&scan_table[g_scan_step].led);
}

void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim)
{
    if (htim->Instance != TIM2 || htim->Channel != HAL_TIM_ACTIVE_CHANNEL_2) {
        return;
    }
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc)
{
    uint8_t dma_mask = sensor_dma_mask_for_adc(hadc);

    if (dma_mask == 0u) {
        return;
    }

    g_dma_done_flags |= dma_mask;

    if (g_dma_done_flags == 0x1Fu) {
        g_dma_done_flags = 0u;
        g_frame_ready = 1u;
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
    sensor_scan_poll();

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
        if( U16_turnmark_cnt < 140 ) return; 
        
        g_Flag.move_state = OFF;
        
        if(g_Flag.first_race)
        {
            move_to_end( 200.0f, 0.0f, g_u32_END_ACC_targetval);
            OLED_Printf(" END_ON ");
            OLED_Printf("T:%3.2f", g_fp32time);
        }
        else if(g_Flag.second_race)
        {
            OLED_Printf("2nd  END");
            move_to_end( 200.0f, 0.0f, g_u32_END_ACC_targetval);
            LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0.0f;
            OLED_Printf("T:%3.2f", g_fp32time);
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
    a = 0;
    OLED_Printf("        ");
    do
    {
        if (!SW_R)    
        {
            a++; 
            HAL_Delay(100);
        }
        else if (!SW_L)    
        {
            a--; 
            HAL_Delay(100);
        }

        if (a < 0) a = 15;
        else if (a > 15) a = 0;

        OLED_Printf("S%d:%.0f", a, g_sen[a].iq17_4095_value); 
    } while(SW_D); 

    a = 2;
}

void F_Max_min()
{
    int16_t sen_value_setting = 0;
    
    OLED_Printf("LOADING_");
    HAL_Delay(500);

    for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
    {
        g_sen[sen_value_setting].iq17_4095_max_value = 0.0f;
        g_sen[sen_value_setting].iq17_4095_min_value = 4095.0f;
    }

    while(SW_R)
    {
        OLED_Printf("Set_MAX_");
        for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
        {
            if (g_sen[sen_value_setting].iq17_4095_max_value < g_sen[sen_value_setting].iq17_4095_value)
                g_sen[sen_value_setting].iq17_4095_max_value = g_sen[sen_value_setting].iq17_4095_value;
        }
    }
    
    while(SW_D)
    {
        OLED_Printf("Set_MIN_");
        for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
        {
            if (g_sen[sen_value_setting].iq17_4095_min_value > g_sen[sen_value_setting].iq17_4095_value)
                g_sen[sen_value_setting].iq17_4095_min_value = g_sen[sen_value_setting].iq17_4095_value;
        }
    }
    maxmin_write_rom();
    HAL_Delay(125);
}

void F_127()
{    
    a = 0;
    OLED_Printf("        ");
    
    do
    {
        if (!SW_R)
        {
            a++; 
            HAL_Delay(100);
        }
        else if (!SW_L)
        {
            a--; 
            HAL_Delay(100);
        }

        if (a < 0) a = 15;
        else if (a > 15) a = 0;

        OLED_Printf("S%d:%.0f", a, g_sen[a].iq17_127_value); 
    } while(SW_D); 

    a = 3;
}

void F_POSCHECK()
{
    OLED_Printf("POSCHECK");
    HAL_Delay(500);
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

            OLED_Printf("P:%6.0f", g_pos.iq10temp_position);
        }
    }
    a=4;
}

void F_TURNMARK()
{
    read_mark_cnt_rom();
    read_line_info_rom();
    cnt=0;
    OLED_Printf("MARK:%ld",g_int32total_cnt);

    HAL_Delay(1000);
    OLED_Printf("        ");
    
    while(SW_D)    
    {
        HAL_Delay(135);
        
        if(!SW_R) cnt++;
        else if(!SW_L) cnt--;
        else if(!SW_U) cnt+=10;

        OLED_Printf("T%d:%3lu", cnt, search_info[cnt].int32turn_way);
    }
}

void sensor_check_127(void)
{
    // Sensor normalize (ADC raw to 0..127)
    for(int i = 0; i < 16; i++) {
        // g_sen[i].iq17_4095_value is updated in the DMA callbacks.
        float denom = g_sen[i].iq17_4095_max_value - g_sen[i].iq17_4095_min_value;
        if(denom <= 0.0f) denom = 1.0f; // Division by zero protection

        g_sen[i].iq17_127_value = ((g_sen[i].iq17_4095_max_value - g_sen[i].iq17_4095_value) * 127.0f) / denom;

        if(g_sen[i].iq17_127_value < 0.0f) g_sen[i].iq17_127_value = 0.0f;
        if(g_sen[i].iq17_127_value > 127.0f) g_sen[i].iq17_127_value = 127.0f;

        // u16state update with hysteresis (35 ~ 60)
        if (g_sen[i].iq17_127_value > 60.0f) {
            g_sen[i].iq17_ON_OFF_value = 1.0f;
            g_pos.u16state |= g_sen[i].u16active_arr;
        } else if (g_sen[i].iq17_127_value < 35.0f) {
            g_sen[i].iq17_ON_OFF_value = 0.0f;
            g_pos.u16state &= g_sen[i].u16passive_arr;
        }
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

        OLED_Printf("Line Out");
        
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
