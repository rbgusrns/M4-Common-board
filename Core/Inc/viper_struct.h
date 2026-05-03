/**
  ******************************************************************************
  * @file    viper_struct.h
  * @brief   Core data structures ported from _Viper_ (TMS320F2809)
  *
  * @note    Original: Struct.h by Choi gi baek (MAZE 16TH), 2012.01.18
  *          All IQ types replaced with float via iqmath_compat.h
  ******************************************************************************
  */

#ifndef __VIPER_STRUCT_H__
#define __VIPER_STRUCT_H__

#include <stdint.h>

/* ═══════════════════════════════════════════════════════════════════════════
 *  Race info — one entry per segment (stored in Flash, up to 256 segments)
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef struct first_race_info
{
    int32_t int32dist;
    int32_t int32turn_way;
    int32_t int32L_dist;
    int32_t int32R_dist;
    int32_t int32cross_check_dist;
    int32_t int32turn_dir;
    int32_t int32turn_cnt;
    int32_t int32accel;

    float iq7in_vel;
    float iq7vel;
    float iq7out_vel;
    float iq7dec_dist;
    float iq7m_dist;
} race_info;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Sensor — 16-channel line sensor data
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef volatile struct sensor_variable
{
    float iq17_4095_value;
    float iq17_4095_min_value;
    float iq17_4095_max_value;
    float iq17_127_value;
    float iq17_ON_OFF_value;

    uint16_t u16active_arr;
    uint16_t u16passive_arr;

    float iq7weight;
} sen_t;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Sensor enable / shift tracking
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef struct shift_str
{
    uint16_t u16sen_enable;
    uint16_t u16sen_state;
} sen_enable_str;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Position calculation
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef volatile struct position
{
    float iq17sum;
    float iq7sum;
    float iq7sum_of_sec;
    float iq7temp_pos;

    uint16_t u16enable;
    uint16_t u16state;

    float iq10temp_position;
} position_t;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Turnmark detection
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef volatile struct
{
    float   iq17turnmark_dist;
    float   iq17check_dist;
    float   iq17limit_dist;
    float   iq17Turnmark_Check_Dist;

    uint16_t u16State;
    uint16_t u16mark_enable;
    uint16_t u16turn_flag;
    uint16_t u16single_flag;
    uint16_t u16cross_flag;
} turnmark_t;

typedef volatile struct str_point
{
    turnmark_t *g_lmark;
    turnmark_t *g_rmark;
} str_point_t;

/* ═══════════════════════════════════════════════════════════════════════════
 *  Motor control — one per motor (Left, Right)
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef struct
{
    float   iqTargetA;          ///< Target acceleration
    float   iqDist;             ///< Target distance
    float   iqVelo;             ///< Current velocity
    float   iqTargetV;          ///< Target velocity
    float   iqNextV;            ///< Next velocity (computed per step)
    float   iqAmpyS;
    float   iqHandle;           ///< Steering multiplier (0.0~1.0+)
    float   iqTotalDis;         ///< Total distance traveled
    float   iq24TargetA_1;
    float   iq24TimeValue;

    uint32_t u32_Period_Cnt;
    uint32_t u32_Period;
    uint16_t u16_pPeriod;

    float   iq17Turnmark_Check_Dist;
    float   iq15GoneDist;
    float   iq15Cross_Check_Dist;
    float   iq17Start_Check_Dist;
    float   iq17distance_sum;
    float   iq17decel_distance;
    float   iq17err_distance;
    float   iq17user_distance;
    float   iq17decel_vel;

    uint16_t u16decel_flag;
} MOTORCTRL;

/* ═══════════════════════════════════════════════════════════════════════════
 *  System flags (bit field)
 * ═══════════════════════════════════════════════════════════════════════════ */
typedef volatile struct bit_field_flag
{
    uint16_t motor          : 1;
    uint16_t move_state     : 1;
    uint16_t start_flag     : 1;
    uint16_t cross_flag     : 1;
    uint16_t lineout_flag   : 1;
    uint16_t end_flag       : 1;
    uint16_t stop_check     : 1;
    uint16_t Rturnmark_flag : 1;
    uint16_t Lturnmark_flag : 1;
    uint16_t speed_up       : 1;
    uint16_t speed_up_start : 1;
    uint16_t straight_run   : 1;
    uint16_t first_race     : 1;
    uint16_t second_race    : 1;
    uint16_t race_start     : 1;
} bit_field_flag_t;

#endif /* __VIPER_STRUCT_H__ */
