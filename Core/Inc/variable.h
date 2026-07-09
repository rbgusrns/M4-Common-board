/**
  ******************************************************************************
  * @file    variable.h
  * @brief   Global variables and GPIO macros for M4_STEP (STM32G474)
  *
  * @note    Ported from Variable.h (_Viper_ / TMS320F2809)
  *          GPIO macros now use CubeMX-generated pin labels from main.h
  ******************************************************************************
  */

#ifndef __VARIABLE_H__
#define __VARIABLE_H__

#include "main.h"
#include "struct.h"
#include <stdint.h>


typedef float   float32;
typedef double  float64;

#ifndef ON
#define ON  1
#endif
#ifndef OFF
#define OFF 0
#endif


/* ═══════════════════════════════════════════════════════════════════════════
 *  Extern peripheral handles (defined in main.c by CubeMX)
 * ═══════════════════════════════════════════════════════════════════════════ */

/* ═══════════════════════════════════════════════════════════════════════════
 *  LED indicator macros (STM32 GPIO)
 * ═══════════════════════════════════════════════════════════════════════════ */
/* TODO: Assign actual LED GPIO pins when hardware is confirmed */
#define L_LED_ON
#define L_LED_OFF
#define R_LED_ON
#define R_LED_OFF
#define BLUE_ON
#define BLUE_OFF

/* ═══════════════════════════════════════════════════════════════════════════
 *  Switch input macros (active-low)
 *  CubeMX labels: SW_U, SW_D, SW_L, SW_R
 * ═══════════════════════════════════════════════════════════════════════════ */
#define SW_U  (((SW_U_GPIO_Port->IDR & SW_U_Pin) != 0U) ? 1U : 0U)
#define SW_D  (((SW_D_GPIO_Port->IDR & SW_D_Pin) != 0U) ? 1U : 0U)
#define SW_L  (((SW_L_GPIO_Port->IDR & SW_L_Pin) != 0U) ? 1U : 0U)
#define SW_R  (((SW_R_GPIO_Port->IDR & SW_R_Pin) != 0U) ? 1U : 0U)

/* ═══════════════════════════════════════════════════════════════════════════
 *  Sensor LED control (L0~L7 — each drives 2 emitter LEDs)
 *  CubeMX labels: L0_Pin ~ L7_Pin on various ports
 * ═══════════════════════════════════════════════════════════════════════════ */
/* NOTE: L0~L7 naming in CubeMX main.h differs from docs/sensor_system_design.md
 *       CubeMX labels are reversed (L7=PC14, L0=PC2).
 *       The step table below follows the design doc mapping. */

typedef struct {
    GPIO_TypeDef *port;
    uint16_t      pin;
} led_pin_t;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Sensor ON/OFF shorthand macros (S0~S15)
 * ═══════════════════════════════════════════════════════════════════════════ */
#define S0  g_sen[0].fp32_on_off_value
#define S1  g_sen[1].fp32_on_off_value
#define S2  g_sen[2].fp32_on_off_value
#define S3  g_sen[3].fp32_on_off_value
#define S4  g_sen[4].fp32_on_off_value
#define S5  g_sen[5].fp32_on_off_value
#define S6  g_sen[6].fp32_on_off_value
#define S7  g_sen[7].fp32_on_off_value
#define S8  g_sen[8].fp32_on_off_value
#define S9  g_sen[9].fp32_on_off_value
#define S10 g_sen[10].fp32_on_off_value
#define S11 g_sen[11].fp32_on_off_value
#define S12 g_sen[12].fp32_on_off_value
#define S13 g_sen[13].fp32_on_off_value
#define S14 g_sen[14].fp32_on_off_value
#define S15 g_sen[15].fp32_on_off_value

/* ═══════════════════════════════════════════════════════════════════════════
 *  Turn direction / state defines
 * ═══════════════════════════════════════════════════════════════════════════ */
#define STRAIGHT    0x0001
#define LEFT_TURN   0x0010
#define RIGHT_TURN  0x0100
#define END_TURN    0x0008
#define TURN_45     0x0010
#define TURN_90     0x0020
#define TURN_180    0x0040
#define TURN_270    0x0080
#define LARGE_TURN  0x0100

#define POS_END     16000.0f

/* ═══════════════════════════════════════════════════════════════════════════
 *  Position index enums
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef enum
{
    NONE,
    S_ONE, S_TWO, S_THREE, S_FOUR, S_FIVE, S_SIX,
    S_SEVEN, S_EIGHT, S_NINE, S_TEN, S_ELEVEN, S_TWELVE
} pos_idx_e;

typedef enum
{
    NON_SHIFT,
    ONE_SHIFT, TWO_SHIFT, THREE_SHIFT, FOUR_SHIFT,
    FIVE_SHIFT, SIX_SHIFT, SEVEN_SHIFT, EIGHT_SHIFT
} shift_rate_e;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Step motor constants (distance per step in mm)
 * ═══════════════════════════════════════════════════════════════════════════ */
/* Original: STEP_D = _IQ(0.823882502), STEP_2D = _IQ(1.647765004) */
#define STEP_D      0.823882502f
#define STEP_2D     1.647765004f



/* ═══════════════════════════════════════════════════════════════════════════
 *  Global variable declarations (extern)
 * ═══════════════════════════════════════════════════════════════════════════ */

/* Structures */
extern sen_t            g_sen[16];
extern race_info        search_info[256];
extern position_t       g_pos;
extern sen_enable_str   g_shift;
extern turnmark_t       g_lmark, g_rmark;
extern str_point_t      g_ptemp;
extern str_point_t     *g_ptr;
extern MOTORCTRL        LMotor, RMotor, g_motor;
extern bit_field_flag_t g_Flag;

/* Scalars */
extern int      a, b, d, A_HANDLE, D_HANDLE, cnt, S, N;
extern double   c;

extern float    g_fp32time;
extern float    g_fp32_large_vel;
extern float    g_fp32_cross_dist;
extern float    g_fp32_handle_dec;
extern float    g_fp32_handle_acc;
extern float    g_fp32_turn_cross_dist;
extern float    g_fp32_user_vel;

extern volatile uint32_t g_u32_sen_cnt;
extern volatile uint32_t g_u32_compare_cnt;
extern volatile uint32_t g_u32_lineout_cnt;
extern volatile uint32_t g_u32_ACC_targetval;
extern volatile uint32_t g_u32_VEL_targetval;
extern volatile uint32_t g_u32_END_ACC_targetval;
extern volatile uint32_t g_u32_END_VEL_targetval;
extern volatile uint32_t g_u32_R_index;
extern volatile uint32_t g_u32_L_index;
extern volatile uint32_t g_u32_dist_check;
extern volatile uint32_t g_u32_start_end_cnt;
extern volatile uint32_t g_u32_cross_cnt;
extern volatile uint32_t g_u32_rturnmark_cnt;
extern volatile uint32_t g_u32_lturnmark_cnt;
extern volatile uint32_t g_u32_turnmark_cnt;
extern volatile uint32_t g_u32_total_cnt;

extern uint32_t g_u32_isr_cnt;

extern int32_t  g_i32_Time_index;
extern int32_t  g_i32_sec_acc;
extern int32_t  g_i32_turn_45_vel;
extern int32_t  g_i32_turn_90_vel;
extern int32_t  g_i32_turn_180_vel;
extern int32_t  g_i32_turn_270_vel;
extern int32_t  g_i32_turn_large_vel;
extern int32_t  g_i32_long_acc;
extern int32_t  g_i32_mid_acc;
extern int32_t  g_i32_short_acc;
extern int32_t  g_i32_speed_up_cnt;
extern int32_t  g_i32_large_acc;

extern volatile uint16_t g_u16_turnmark_cnt;

extern uint16_t i;
extern uint16_t g_u16pos_cnt;
extern uint16_t g_u16turn_dist;
extern uint16_t g_u16_handle_acc;
extern uint16_t g_u16_handle_dec;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Step motor phase patterns (BSRR values for STM32)
 *
 *  Left Motor:  LA(PA15), LA'(PC10), LB(PC11), LB'(PC12)
 *  Right Motor: RA(PD0),  RA'(PD1),  RB(PD2),  RB'(PD3)
 *
 *  2-Phase excitation pattern (same logical pattern as Viper):
 *  Step 0: A+B,  Step 1: A'+B,  Step 2: A'+B',  Step 3: A+B'
 * ═══════════════════════════════════════════════════════════════════════════ */

/*
 * BSRR format: bits[15:0] = SET, bits[31:16] = RESET
 *
 * Left motor on GPIOA(pin15) + GPIOC(pins 10,11,12)
 *   → Cannot do single BSRR write across ports.
 *   → Use helper function instead (see motor.c)
 *
 * Right motor on GPIOD(pins 0,1,2,3)
 *   → All on same port! Can use BSRR.
 *
 * Right motor BSRR values for GPIOD:
 *   RA=PD0(bit0), RA'=PD1(bit1), RB=PD2(bit2), RB'=PD3(bit3)
 *
 *   Original Viper 2-phase: {0x000a, 0x0009, 0x0005, 0x0006}
 *   Bit pattern:  0b1010, 0b1001, 0b0101, 0b0110
 *   Mapping: bit3=RB', bit2=RB, bit1=RA', bit0=RA
 *
 *   Step0: RA'+RB  = 0b0110 → SET=0x06, RESET=(~0x06&0x0F)=0x09 → BSRR = (0x09<<16)|0x06
 *   Step1: RA +RB  = 0b0101 → SET=0x05, RESET=0x0A              → BSRR = (0x0A<<16)|0x05
 *   Step2: RA +RB' = 0b1001 → SET=0x09, RESET=0x06              → BSRR = (0x06<<16)|0x09
 *   Step3: RA'+RB' = 0b1010 → SET=0x0A, RESET=0x05              → BSRR = (0x05<<16)|0x0A
 */
extern const uint32_t right_step_bsrr[4];

/* Left motor helper */
void left_motor_step(uint32_t index);
void right_motor_step(uint32_t index);
void motor_stop_all(void);
void Variable_Init(void);

#endif /* __VARIABLE_H__ */
