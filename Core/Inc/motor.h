/**
  ******************************************************************************
  * @file    motor.h
  * @brief   Stepper motor control for left/right motors
  *
  * @note    Ported from Motor.h/_Viper_ (TMS320F2809)
  *          Step pattern output via BSRR for atomic GPIO writes
  ******************************************************************************
  */

#ifndef __MOTOR_H__
#define __MOTOR_H__

#include "viper_variable.h"

/* ──────────── Motor menu functions ──────────── */
void F_VELOCITY(void);
void F_ACCELERATION(void);
void F_HANDLE_ACC(void);
void F_HANDLE_DEC(void);
void F_ENDACCEL(void);
void F_TURNDIST(void);
void HANDLE_SELECT(void);

/* ──────────── Motor control core ──────────── */
void motor_vari_init(void);
void Init_MotorCtrlVar(MOTORCTRL *pM);
void Motor_CalBaseMotionValue(MOTORCTRL *pM);

void R_Motor_ON(MOTORCTRL *pM);
void L_Motor_ON(MOTORCTRL *pM);
void decel_calculation(void);

void move_to_move(float dist, float dec_dist, float tar_vel, float dec_vel, int32_t acc);
void move_to_end(float dist, float vel, int32_t acc);

#endif /* __MOTOR_H__ */
