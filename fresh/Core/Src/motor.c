#include "motor.h"
#include "oled.h"
#include "rom.h"
#include <string.h>
#include <math.h>

void F_ENDACCEL()
{
    // TODO
    // 오른쪽 스위치(SW_R) 누를 시 g_u32_END_ACC_targetval을 500씩 증가, 왼쪽 스위치(SW_L) 누를 시 500씩 감소,
    // 위쪽 스위치(SW_U) 누를 시 8000으로 리셋하고, 아래쪽 스위치(SW_D) 누를 시 설정을 완료하여 ROM에 기록(write_end_acc_rom) 후 복귀하는 로직을 구현.
}

void F_ACCELERATION()
{
    // TODO
    // 1단계: SW_R/SW_L 누를 시 g_u32_ACC_targetval 값을 100씩 가감. 아래쪽 스위치(SW_D) 누를 시 가속도 타깃값 설정 단계 완료.
    // 2단계: SW_R/SW_L 누를 시 g_i32_long_acc 값을 100씩 가감. 아래쪽 스위치(SW_D) 누를 시 설정을 완료하여 ROM에 기록(write_acc_rom) 후 복귀하는 로직을 구현.
}

void F_HANDLE_ACC()
{
    // TODO
    // SW_R/SW_L 누를 시 g_u16_handle_acc 값을 10씩 가감하고, 아래쪽 스위치(SW_D) 누를 시 설정을 완료하여 ROM에 기록(write_acc_handle_rom) 후 복귀하는 조향 가속 설정 기능을 구현.
}

void F_HANDLE_DEC()
{
    // TODO
    // SW_R/SW_L 누를 시 g_u16_handle_dec 값을 10씩 가감하고, 아래쪽 스위치(SW_D) 누를 시 설정을 완료하여 ROM에 기록(write_dec_handle_rom) 후 복귀하는 조향 감속 설정 기능을 구현.
}

void F_TURNDIST()
{
    // TODO
    // SW_R/SW_L 누를 시 g_u16turn_dist 값을 1씩 가감하고, 아래쪽 스위치(SW_D) 누를 시 설정을 완료한 뒤 복귀하는 기능을 구현.
}

void F_VELOCITY()
{
    // TODO
    // SW_R/SW_L 누를 시 g_u32_VEL_targetval 값을 50씩 가감하고, 아래쪽 스위치(SW_D) 누를 시 속도 설정을 완료.
}

void motor_vari_init( void )
{
    Init_MotorCtrlVar( &LMotor );
    Init_MotorCtrlVar( &RMotor );
}

void Init_MotorCtrlVar( MOTORCTRL *pM )
{
    memset( pM, 0, sizeof(MOTORCTRL) );

    pM->fp32target_accel = (float)g_u32_ACC_targetval;
    pM->fp32target_accel_inv = 0.0f;
    pM->fp32target_vel = (float)g_u32_VEL_targetval;
    pM->fp32target_dist = 0.0f;
    pM->fp32velocity = 0.0f;
    pM->fp32next_vel = 0.0f;

    pM->fp32accel_step = 0.0f;

    pM->fp32handle = 1.0f;
    pM->fp32total_dist = 0.0f;
    pM->fp32time_value = 0.0f;
    pM->u32_Period = 0;
    pM->u16_pPeriod = 0;
    pM->u32_Period_Cnt = 0;

    pM->fp32cross_check_dist = 0.0f;
}

void Motor_CalBaseMotionValue( MOTORCTRL *pM )
{
    if(pM->fp32next_vel < pM->fp32target_vel)
    {
        pM->fp32velocity = pM->fp32next_vel;
        pM->fp32accel_step = STEP_2D * pM->fp32target_accel;
        pM->fp32next_vel = sqrtf(pM->fp32accel_step + pM->fp32velocity * pM->fp32velocity);

        pM->fp32target_accel_inv = 1.0f / pM->fp32target_accel;

        pM->fp32time_value = (pM->fp32next_vel - pM->fp32velocity) * pM->fp32target_accel_inv;

        pM->u32_Period = (uint32_t)(40000.0f * pM->fp32time_value * pM->fp32handle);

        pM->u32_Period_Cnt = 0;

        if( pM->fp32target_vel <= pM->fp32next_vel )
            pM->fp32next_vel = pM->fp32target_vel;
    }
    else
    {
        pM->fp32velocity = pM->fp32next_vel;
        pM->fp32accel_step = STEP_2D * pM->fp32target_accel;
        float val = pM->fp32velocity * pM->fp32velocity - pM->fp32accel_step;
        pM->fp32next_vel = (val > 0.0f) ? sqrtf(val) : 0.0f;

        pM->fp32target_accel_inv = 1.0f / pM->fp32target_accel;

        pM->fp32time_value = (pM->fp32velocity - pM->fp32next_vel) * pM->fp32target_accel_inv;

        pM->u32_Period = (uint32_t)(40000.0f * pM->fp32time_value * pM->fp32handle);

        pM->u32_Period_Cnt = 0;

        if( pM->fp32target_vel >= pM->fp32next_vel )
            pM->fp32next_vel = pM->fp32target_vel;
    }
}

void R_Motor_ON( MOTORCTRL*pM )
{
    pM->fp32turnmark_check_dist += STEP_D;
    pM->fp32cross_check_dist += STEP_D;
    pM->fp32gone_dist += STEP_D;
    pM->fp32distance_sum += STEP_D;

    RMotor.fp32err_distance = RMotor.fp32user_distance - RMotor.fp32distance_sum;
    LMotor.fp32err_distance = LMotor.fp32user_distance - LMotor.fp32distance_sum;

    decel_calculation();
}

void L_Motor_ON(MOTORCTRL*pM )
{
    pM->fp32turnmark_check_dist += STEP_D;
    pM->fp32cross_check_dist += STEP_D;
    pM->fp32gone_dist += STEP_D;
    pM->fp32distance_sum += STEP_D;

    LMotor.fp32err_distance = LMotor.fp32user_distance - LMotor.fp32distance_sum;
    RMotor.fp32err_distance = RMotor.fp32user_distance - RMotor.fp32distance_sum;

    decel_calculation();
}

void decel_calculation()
{
   if( LMotor.u16decel_flag )
   {
      if( LMotor.fp32decel_distance >= fabsf( LMotor.fp32err_distance ) )
      {
         RMotor.fp32target_vel = RMotor.fp32decel_vel;
         LMotor.fp32target_vel = LMotor.fp32decel_vel;

         RMotor.u16decel_flag = LMotor.u16decel_flag = OFF;

         g_Flag.speed_up = OFF;
         g_Flag.speed_up_start = OFF;
      }
   }
   else if( RMotor.u16decel_flag )
   {
      if( RMotor.fp32decel_distance >= fabsf( RMotor.fp32err_distance ) )
      {
         RMotor.fp32target_vel = RMotor.fp32decel_vel;
         LMotor.fp32target_vel = LMotor.fp32decel_vel;

         RMotor.u16decel_flag = LMotor.u16decel_flag = OFF;

         g_Flag.speed_up = OFF;
         g_Flag.speed_up_start = OFF;
      }
   }
}

void move_to_move( float dist, float dec_dist, float tar_vel, float dec_vel, int32_t acc )
{
   // In original code CpuTimer0 was stopped/started here
   __disable_irq();

   RMotor.fp32target_accel = LMotor.fp32target_accel = (float)acc;

   RMotor.fp32decel_distance = LMotor.fp32decel_distance = dec_dist;
   RMotor.fp32user_distance = LMotor.fp32user_distance = dist;

   RMotor.fp32target_vel= LMotor.fp32target_vel = tar_vel;

   RMotor.fp32err_distance = RMotor.fp32user_distance - RMotor.fp32distance_sum;
   LMotor.fp32err_distance = LMotor.fp32user_distance - LMotor.fp32distance_sum;

   RMotor.fp32decel_vel = LMotor.fp32decel_vel = dec_vel;

   RMotor.u16decel_flag = LMotor.u16decel_flag = ON;

   __enable_irq();
}

void move_to_end( float dist, float vel, int32_t acc )
{
   __disable_irq();

   g_fp32time = (float)g_i32_Time_index * 0.000025f;

   RMotor.fp32target_accel = LMotor.fp32target_accel = (float)acc;

   LMotor.fp32decel_distance = RMotor.fp32decel_distance = dist;
   RMotor.fp32user_distance =  LMotor.fp32user_distance = dist;

   RMotor.fp32target_vel = LMotor.fp32target_vel = vel;

   RMotor.fp32err_distance = RMotor.fp32user_distance - RMotor.fp32distance_sum;
   LMotor.fp32err_distance = LMotor.fp32user_distance - LMotor.fp32distance_sum;

   RMotor.fp32decel_vel = LMotor.fp32decel_vel = 0.0f;

   RMotor.u16decel_flag = LMotor.u16decel_flag = ON;
   g_Flag.move_state = OFF;

   __enable_irq();
}
