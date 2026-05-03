#include "viper_variable.h"

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
float    g_q7large_vel;
float    g_q15cross_dist;
float    g_q17_handle_dec;
float    g_q17_handle_acc;
float    g_q17cross_dist;
float    g_q17user_vel;

volatile uint32_t g_int32_sen_cnt = 0;
volatile uint32_t g_int32_copmare_cnt = 0;
volatile uint32_t g_int32_lineout_cnt = 0;
volatile uint32_t g_u32_ACC_targetval = 0;
volatile uint32_t g_u32_VEL_targetval = 0;
volatile uint32_t g_u32_END_ACC_targetval = 0;
volatile uint32_t g_u32_END_VEL_targetval = 0;
volatile uint32_t g_u32_R_index = 0;
volatile uint32_t g_u32_L_index = 0;
volatile uint32_t g_int32_dist_check = 0;
volatile uint32_t g_int32_start_end_cnt = 0;
volatile uint32_t g_int32_cross_cnt = 0;
volatile uint32_t g_int32_rturnmark_cnt = 0;
volatile uint32_t g_int32_lturnmark_cnt = 0;
volatile uint32_t g_int32_turnmark_cnt = 0;
volatile uint32_t g_int32total_cnt = 0;

uint32_t g_int32_isr_cnt = 0;

int32_t  g_i32_Time_index = 0;
int32_t  g_u32_sec_acc = 0;
int32_t  g_int32turn_45_VEL = 0;
int32_t  g_int32turn_90_VEL = 0;
int32_t  g_int32turn_180_VEL = 0;
int32_t  g_int32turn_270_VEL = 0;
int32_t  g_int32turn_LARGE_VEL = 0;
int32_t  g_int32long_ACC = 0;
int32_t  g_int32mid_ACC = 0;
int32_t  g_int32short_ACC = 0;
int32_t  g_int32speed_up_cnt = 0;
int32_t  g_int32large_ACC = 0;

volatile uint16_t U16_turnmark_cnt = 0;

uint16_t i = 0;
uint16_t g_u16pos_cnt = 0;
uint16_t g_u16turn_dist = 0;
uint16_t g_i16_handle_acc = 0;
uint16_t g_i16_handle_dec = 0;

const uint32_t right_step_bsrr[4] = {
    (0x0009 << 16) | 0x0006,
    (0x000A << 16) | 0x0005,
    (0x0006 << 16) | 0x0009,
    (0x0005 << 16) | 0x000A
};

void left_motor_step(uint32_t index) {
    static const uint8_t left_pat[4][4] = {
        {1, 0, 0, 1},
        {1, 0, 1, 0},
        {0, 1, 1, 0},
        {0, 1, 0, 1}
    };
    uint32_t idx = index & 3;
    HAL_GPIO_WritePin(LA_GPIO_Port, LA_Pin, left_pat[idx][0] ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LA__GPIO_Port, LA__Pin, left_pat[idx][1] ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LB_GPIO_Port, LB_Pin, left_pat[idx][2] ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LB__GPIO_Port, LB__Pin, left_pat[idx][3] ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

void right_motor_step(uint32_t index) {
    uint32_t idx = index & 3;
    GPIOD->BSRR = right_step_bsrr[idx];
}

void motor_stop_all(void) {
    HAL_GPIO_WritePin(LA_GPIO_Port, LA_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LA__GPIO_Port, LA__Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LB_GPIO_Port, LB_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LB__GPIO_Port, LB__Pin, GPIO_PIN_RESET);
    GPIOD->BSRR = (0x0F << 16);
}
