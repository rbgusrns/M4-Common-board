/**
  ******************************************************************************
  * @file    variable.h
  * @brief   M4_STEP 전역 변수, 공용 매크로, GPIO 보조 선언
  *
  * @note    2809 레거시 `_Viper_/main/Variable.h`를 STM32G474/LL 기반으로
  *          옮긴 파일. 실제 핀 이름은 CubeMX가 생성한 `main.h` 라벨을
  *          기준으로 사용.
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

/* 상태 표시 LED
 *
 */
#define L_LED_ON
#define L_LED_OFF
#define R_LED_ON
#define R_LED_OFF
#define BLUE_ON
#define BLUE_OFF

/* 스위치 입력
 *
 * CubeMX 라벨: SW_U, SW_D, SW_L, SW_R
 * 회로는 active-low 기준이다.
 *   눌림: 0
 *   떼짐: 1
 */
#define SW_U  (((SW_U_GPIO_Port->IDR & SW_U_Pin) != 0U) ? 1U : 0U)
#define SW_D  (((SW_D_GPIO_Port->IDR & SW_D_Pin) != 0U) ? 1U : 0U)
#define SW_L  (((SW_L_GPIO_Port->IDR & SW_L_Pin) != 0U) ? 1U : 0U)
#define SW_R  (((SW_R_GPIO_Port->IDR & SW_R_Pin) != 0U) ? 1U : 0U)

/* 센서 발광 LED 제어용 핀 구조체
 *
 * L0~L7은 8단계 스캔용 LED 출력이다.
 * `Core/Src/sensor.c`의 scan_table에서 한 step마다 LED 1개를 켜고,
 * TIM2 TRGO 이후 ADC1/ADC2가 같은 step의 센서 2개를 읽는다.
 */
typedef struct {
    GPIO_TypeDef *port;
    uint16_t      pin;
} led_pin_t;

/* 센서 ON/OFF 값 단축 매크로
 *
 * ADC 정규화 결과가 임계값 이상이면 1.0f, 아니면 0.0f로 들어간다.
 * 라인아웃, 포지션 계산, 턴마크 판단에서 사용한다.
 */
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

/* 주행/턴 상태 비트
 *
 * `int32turn_way`, `int32turn_dir`에 OR 조합으로 저장되며, 1차 주행 기록과 2차 주행 분석에서 함께 사용한다.
 */
#define STRAIGHT    0x0001
#define LEFT_TURN   0x0010
#define RIGHT_TURN  0x0100
#define END_TURN    0x0008
#define TURN_45     0x0010
#define TURN_90     0x0020
#define TURN_180    0x0040
#define TURN_270    0x0080
#define LARGE_TURN  0x0100

/* 포지션 계산 상한/하한 */
#define POS_END     16000.0f

/* 포지션 및 센서 window shift 인덱스 */
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

/* 스텝 모터 거리 상수
 *
 * 레거시:
 *   STEP_D  = _IQ(0.823882502)
 *   STEP_2D = _IQ(1.647765004)
 *
 * 
 */
#define STEP_D      0.823882502f
#define STEP_2D     1.647765004f

/* 전역 구조체 */
extern sen_t            g_sen[16];
extern race_info        search_info[256];
extern position_t       g_pos;
extern sen_enable_str   g_shift;
extern turnmark_t       g_lmark, g_rmark;
extern str_point_t      g_ptemp;
extern str_point_t     *g_ptr;
extern MOTORCTRL        LMotor, RMotor, g_motor;
extern bit_field_flag_t g_Flag;

/* 메뉴/디버그용 스칼라 */
extern int      a, b, d, A_HANDLE, D_HANDLE, cnt, S, N;
extern double   c;

/* 주행/센서 계산값 */
extern float    g_fp32time;
extern float    g_fp32_large_vel;
extern float    g_fp32_cross_dist;
extern float    g_fp32_handle_dec;
extern float    g_fp32_handle_acc;
extern float    g_fp32_turn_cross_dist;
extern float    g_fp32_user_vel;

/* ISR 및 주행 상태 카운터 */
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

/* 2차 주행 분석/속도 설정값 */
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

/* 턴마크/센서 window/핸들 계수 */
extern volatile uint16_t g_u16_turnmark_cnt;

extern uint16_t i;
extern uint16_t g_u16pos_cnt;
extern uint16_t g_u16turn_dist;
extern uint16_t g_u16_handle_acc;
extern uint16_t g_u16_handle_dec;

/* 스텝 모터 BSRR 출력 테이블
 *
 * BSRR 형식:
 *   bits[15:0]  = SET
 *   bits[31:16] = RESET
 *
 * 왼쪽 모터 핀:
 *   LB  = PC9
 *   LB' = PC10
 *   LA  = PC11
 *   LA' = PC12
 *
 * 오른쪽 모터 핀:
 *   RA  = PD0
 *   RA' = PD1
 *   RB  = PD2
 *   RB' = PD3
 *
 * 현재 실제 출력 순서:
 *
 *   left_step_bsrr:
 *     idx0: LA  + LB'
 *     idx1: LA  + LB
 *     idx2: LA' + LB
 *     idx3: LA' + LB'
 *
 *   right_step_bsrr:
 *     idx0: RA' + RB
 *     idx1: RA  + RB
 *     idx2: RA  + RB'
 *     idx3: RA' + RB'
 */
extern const uint32_t right_step_bsrr[4];
extern const uint32_t left_step_bsrr[4];

/* 모터 GPIO helper */
void left_motor_step(uint32_t index);
void right_motor_step(uint32_t index);
void motor_stop_all(void);

/* 전역 변수 기본값 초기화 */
void Variable_Init(void);

#endif /* __VARIABLE_H__ */
