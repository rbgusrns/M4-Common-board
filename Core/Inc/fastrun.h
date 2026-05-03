/**
  ******************************************************************************
  * @file    fastrun.h
  * @brief   Second race (fast run) logic with speed planning
  *
  * @note    Ported from fastrun.h/_Viper_ (TMS320F2809)
  ******************************************************************************
  */

#ifndef __FASTRUN_H__
#define __FASTRUN_H__

#include "viper_variable.h"

/* ──────────── Turn distance thresholds (mm) ──────────── */
typedef enum
{
    TURN_45_DIST  = 240,
    TURN_90_DIST  = 450,
    TURN_180_DIST = 720,
    TURN_270_DIST = 1100
} turn_dist_enum;

/* ──────────── Straight delay counts ──────────── */
typedef enum
{
    D_STR  = 0,
    D_45   = 300,
    D_90   = 550,
    D_180  = 750,
    D_270  = 800
} straight_delay_enum;

/* ──────────── Straight distance thresholds (mm) ──────────── */
typedef enum
{
    LONG_DIST       = 2000,
    MID_DIST        = 1000,
    SHORT_DIST      = 400,
    VERY_SHORT_DIST = 200
} straight_dist_enum;

/* ──────────── Public functions ──────────── */
void second_race(void);
void fast_race(race_info *pinfo);
void second_info(race_info *p_info);
void turn_info_func(void);
void turn_info_compute(race_info *pinfo, int32_t mark_cnt);
void speed_up_compute(race_info *p_info);

void max_vel_compute(float dist, float minus_dist, float cur_vel,
                     int32_t acc, float *max_vel);
void decel_dist_compute(float cur_vel, float tar_vel,
                        int32_t acc, float *decel_dist);

#endif /* __FASTRUN_H__ */
