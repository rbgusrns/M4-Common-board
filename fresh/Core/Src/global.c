#include "variable.h"

// Structures
sen_t            g_sen[16];
race_info        search_info[256];
position_t       g_pos;
sen_enable_str   g_shift;
turnmark_t       g_lmark, g_rmark;
str_point_t      g_ptemp;
str_point_t     *g_ptr;
MOTORCTRL        LMotor, RMotor, g_motor;
bit_field_flag_t g_Flag;

// Scalars
int      a, b, d, A_HANDLE, D_HANDLE, cnt, S, N;
double   c;

float    g_fp32time;
float    g_fp32_large_vel;
float    g_fp32_cross_dist;
float    g_fp32_handle_dec;
float    g_fp32_handle_acc;
float    g_fp32_turn_cross_dist;
float    g_fp32_user_vel;

volatile uint32_t g_u32_sen_cnt = 0;
volatile uint32_t g_u32_compare_cnt = 0;
volatile uint32_t g_u32_lineout_cnt = 0;
volatile uint32_t g_u32_ACC_targetval = 0;
volatile uint32_t g_u32_VEL_targetval = 0;
volatile uint32_t g_u32_END_ACC_targetval = 0;
volatile uint32_t g_u32_END_VEL_targetval = 0;
volatile uint32_t g_u32_R_index = 0;
volatile uint32_t g_u32_L_index = 0;
volatile uint32_t g_u32_dist_check = 0;
volatile uint32_t g_u32_start_end_cnt = 0;
volatile uint32_t g_u32_cross_cnt = 0;
volatile uint32_t g_u32_rturnmark_cnt = 0;
volatile uint32_t g_u32_lturnmark_cnt = 0;
volatile uint32_t g_u32_turnmark_cnt = 0;
volatile uint32_t g_u32_total_cnt = 0;

uint32_t g_u32_isr_cnt = 0;

int32_t  g_i32_Time_index = 0;
int32_t  g_i32_sec_acc = 0;
int32_t  g_i32_turn_45_vel = 0;
int32_t  g_i32_turn_90_vel = 0;
int32_t  g_i32_turn_180_vel = 0;
int32_t  g_i32_turn_270_vel = 0;
int32_t  g_i32_turn_large_vel = 0;
int32_t  g_i32_long_acc = 0;
int32_t  g_i32_mid_acc = 0;
int32_t  g_i32_short_acc = 0;
int32_t  g_i32_speed_up_cnt = 0;
int32_t  g_i32_large_acc = 0;

volatile uint16_t g_u16_turnmark_cnt = 0;

uint16_t i = 0;
uint16_t g_u16pos_cnt = 0;
uint16_t g_u16turn_dist = 0;
uint16_t g_u16_handle_acc = 0;
uint16_t g_u16_handle_dec = 0;

const uint32_t right_step_bsrr[4] = {
    (0x0009 << 16) | 0x0006,
    (0x000A << 16) | 0x0005,
    (0x0006 << 16) | 0x0009,
    (0x0005 << 16) | 0x000A
};

const uint32_t left_step_bsrr[4] = {
    (0x1200 << 16) | 0x0C00,
    (0x1400 << 16) | 0x0A00,
    (0x0C00 << 16) | 0x1200,
    (0x0A00 << 16) | 0x1400
};

void left_motor_step(uint32_t index) {
    uint32_t idx = index & 3;
    GPIOC->BSRR = left_step_bsrr[idx];
}

void right_motor_step(uint32_t index) {
    uint32_t idx = index & 3;
    GPIOD->BSRR = right_step_bsrr[idx];
}

void motor_stop_all(void) {
    GPIOC->BSRR = (0x1E00 << 16); // Reset PC9, PC10, PC11, PC12
    GPIOD->BSRR = (0x0F << 16);   // Reset PD0, PD1, PD2, PD3
}

void Variable_Init(void)
{
    g_u32_sen_cnt = 0;
    g_u32_compare_cnt = 0;
    g_u16pos_cnt = 6;
    g_pos.fp32temp_position = 0.0f;
    g_pos.fp32temp_pos = 0.0f;

    g_Flag.cross_flag = OFF;
    g_Flag.start_flag = OFF;
    g_Flag.end_flag = OFF;

    g_pos.u16state = 0x0000;
    g_u16turn_dist = 73;
    A_HANDLE = 0;
    D_HANDLE = 0;

    g_u32_cross_cnt = 0;
    g_u32_turnmark_cnt = 0;
    g_u32_rturnmark_cnt = 0;
    g_u32_lturnmark_cnt = 0;
    g_u32_lineout_cnt = 0;
    g_u32_start_end_cnt = 0;

    g_u32_ACC_targetval = 3200;
    g_u32_VEL_targetval = 1800;
    g_fp32_user_vel = (float)g_u32_VEL_targetval / 128.0f;
    g_u32_END_ACC_targetval = 9000;
    g_u16_turnmark_cnt = 0;

    g_u32_END_VEL_targetval = 1300;
    g_i32_turn_45_vel = 2200;
    g_i32_turn_90_vel = 2200;
    g_i32_turn_180_vel = 2100;
    g_i32_turn_270_vel = 2000;
    g_i32_turn_large_vel = 2300;

    g_i32_short_acc = 800;
    g_i32_mid_acc = 2500;
    g_i32_long_acc = 3300;
    g_i32_large_acc = 1500;
    g_fp32_large_vel = 2000.0f;

    g_u16_handle_acc = 2680;
    g_u16_handle_dec = 2300;
    g_fp32_handle_acc = (float)g_u16_handle_acc * 0.00000001f;
    g_fp32_handle_dec = (float)g_u16_handle_dec * 0.0000001f;

    a = b = c = d = 0;
    S = 460;
    N = 0;
}
