#include "motor.h"
#include "oled.h"
#include "rom.h"
#include <string.h>
#include <math.h>

void F_ENDACCEL()
{
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "EDA:%lu", g_u32_END_ACC_targetval);
        if (!SW_R)
        {
            HAL_Delay(135);
            g_u32_END_ACC_targetval += 500;
        }
        else if (!SW_L)
        {
            HAL_Delay(135);
            g_u32_END_ACC_targetval -= 500;
        }
        else if (!SW_U)
        {
            HAL_Delay(135);
            g_u32_END_ACC_targetval = 8000;
        }
    }
    write_end_acc_rom();
    a = 2;
    b = 2;
}

void F_ACCELERATION()
{
    a = 0;
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "ACC=%lu", g_u32_ACC_targetval);
        if (!SW_R) 
        {
            HAL_Delay(125);
            g_u32_ACC_targetval += 100;
        }
        else if (!SW_L) 
        {    
            HAL_Delay(125);
            g_u32_ACC_targetval -= 100;
        }
    }
    
    HAL_Delay(150);

    while(SW_D)
    {
        OLED_Printf(0U, 0U, "ACC=%lu", g_int32long_ACC);
        if (!SW_R) 
        {
            HAL_Delay(125);
            g_int32long_ACC += 100;
        }
        else if (!SW_L) 
        {    
            HAL_Delay(125);
            g_int32long_ACC -= 100;
        }
    }
    
    write_acc_rom();
    a = 2;
    b = 0;
    HAL_Delay(100);
}

void F_HANDLE_ACC()
{
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "HDA=%4u", g_i16_handle_acc);
        if (SW_R == 0) 
        {
            HAL_Delay(125);
            g_i16_handle_acc += 10;
        }
        else if (SW_L == 0) 
        {
            HAL_Delay(125);
            g_i16_handle_acc -= 10;
        }
    }
    write_acc_handle_rom();
    a = 3;
    b = 0;
    c = 0;
    HAL_Delay(100);
}

void F_HANDLE_DEC()
{
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "HDD=%4u", g_i16_handle_dec);
        if (SW_R == 0) 
        {
            HAL_Delay(125);
            g_i16_handle_dec += 10;
        }
        else if (SW_L == 0) 
        {    
            HAL_Delay(125);
            D_HANDLE -= 10;
            g_i16_handle_dec -= 10;
        }
    }
    write_dec_handle_rom();
    a = 4;
    b = 0;
    c = 0;
    HAL_Delay(100);
}

void F_TURNDIST()
{
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "DIST=%u", g_u16turn_dist);
        if (!SW_R) 
        {
            HAL_Delay(125);
            g_u16turn_dist += 1;
        }
        else if (!SW_L) 
        {
            HAL_Delay(125);
            g_u16turn_dist -= 1;
        }
    }
    a = 3;
    b = 2;
}

void F_VELOCITY()
{
    a = 0;
    while(SW_D)
    {
        OLED_Printf(0U, 0U, "VEL=%lu", g_u32_VEL_targetval);
        if (!SW_R) 
        {
            HAL_Delay(125);
            g_u32_VEL_targetval += 50;
        }
        else if (!SW_L) 
        {
            HAL_Delay(125);
            g_u32_VEL_targetval -= 50;
        }
    }
    write_vel_rom();
    a = 1;
    b = 0;
}

void motor_vari_init( void )
{
    Init_MotorCtrlVar( &LMotor );
    Init_MotorCtrlVar( &RMotor );
}

void Init_MotorCtrlVar( MOTORCTRL *pM )
{
    memset( pM, 0, sizeof(MOTORCTRL) );

    pM->iqTargetA = (float)g_u32_ACC_targetval;
    pM->iq24TargetA_1 = 0.0f;
    pM->iqTargetV = (float)g_u32_VEL_targetval;    
    pM->iqDist = 0.0f;
    pM->iqVelo = 0.0f; 
    pM->iqNextV = 0.0f;
    
    pM->iqAmpyS = 0.0f;
    
    pM->iqHandle = 1.0f;
    pM->iqTotalDis = 0.0f;
    pM->iq24TimeValue = 0.0f;
    pM->u32_Period = 0;
    pM->u16_pPeriod = 0;
    pM->u32_Period_Cnt = 0;

    pM->iq15Cross_Check_Dist = 0.0f;
}

void Motor_CalBaseMotionValue( MOTORCTRL *pM )
{    
    if(pM->iqNextV < pM->iqTargetV)
    {
        pM->iqVelo = pM->iqNextV;
        pM->iqAmpyS = STEP_2D * pM->iqTargetA; 
        pM->iqNextV = sqrtf(pM->iqAmpyS + pM->iqVelo * pM->iqVelo); 
        
        pM->iq24TargetA_1 = pM->iqTargetA * 0.01f * 128.0f;
        pM->iq24TargetA_1 = 1.0f / pM->iq24TargetA_1; 
        pM->iq24TargetA_1 = pM->iq24TargetA_1 * 0.01f;
        
        pM->iq24TimeValue = (pM->iqNextV - pM->iqVelo) * pM->iq24TargetA_1;
        
        pM->u32_Period = (uint32_t)((40000.0f * pM->iq24TimeValue * pM->iqHandle) / 131072.0f);    
                                                                                                     
        pM->u32_Period_Cnt = 0;    

        if( pM->iqTargetV <= pM->iqNextV )
            pM->iqNextV = pM->iqTargetV;
    }
    else
    {
        pM->iqVelo = pM->iqNextV;
        pM->iqAmpyS = STEP_2D * pM->iqTargetA;
        float val = pM->iqVelo * pM->iqVelo - pM->iqAmpyS;
        pM->iqNextV = (val > 0.0f) ? sqrtf(val) : 0.0f;
        
        pM->iq24TargetA_1 = pM->iqTargetA * 0.01f * 128.0f;
        pM->iq24TargetA_1 = 1.0f / pM->iq24TargetA_1;
        pM->iq24TargetA_1 = pM->iq24TargetA_1 * 0.01f;

        pM->iq24TimeValue = (pM->iqVelo - pM->iqNextV) * pM->iq24TargetA_1;

        pM->u32_Period = (uint32_t)((40000.0f * pM->iq24TimeValue * pM->iqHandle) / 131072.0f);

        pM->u32_Period_Cnt = 0;

        if( pM->iqTargetV >= pM->iqNextV )
            pM->iqNextV = pM->iqTargetV;        
    }
}

void R_Motor_ON( MOTORCTRL*pM )
{
    pM->iq17Turnmark_Check_Dist += STEP_D;
    pM->iq15Cross_Check_Dist += q15STEP_D;
    pM->iq15GoneDist += q15STEP_D;
    pM->iq17distance_sum += STEP_D;

    RMotor.iq17err_distance = RMotor.iq17user_distance - RMotor.iq17distance_sum;
    LMotor.iq17err_distance = LMotor.iq17user_distance - LMotor.iq17distance_sum;
    
    decel_calculation();
}

void L_Motor_ON(MOTORCTRL*pM )
{
    pM->iq17Turnmark_Check_Dist += STEP_D;
    pM->iq15Cross_Check_Dist += q15STEP_D;
    pM->iq15GoneDist += q15STEP_D;
    pM->iq17distance_sum += STEP_D;
    
    LMotor.iq17err_distance = LMotor.iq17user_distance - LMotor.iq17distance_sum;
    RMotor.iq17err_distance = RMotor.iq17user_distance - RMotor.iq17distance_sum;
    
    decel_calculation();
}

void decel_calculation()
{
   if( LMotor.u16decel_flag )
   {
      if( LMotor.iq17decel_distance >= fabsf( LMotor.iq17err_distance ) )
      {
         RMotor.iqTargetV = RMotor.iq17decel_vel; 
         LMotor.iqTargetV = LMotor.iq17decel_vel;

         RMotor.u16decel_flag = LMotor.u16decel_flag = OFF;

         g_Flag.speed_up = OFF;
         g_Flag.speed_up_start = OFF;
      }
   }
   else if( RMotor.u16decel_flag )
   {
      if( RMotor.iq17decel_distance >= fabsf( RMotor.iq17err_distance ) )
      {
         RMotor.iqTargetV = RMotor.iq17decel_vel;
         LMotor.iqTargetV = LMotor.iq17decel_vel;

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

   RMotor.iqTargetA = LMotor.iqTargetA = (float)acc;

   RMotor.iq17decel_distance = LMotor.iq17decel_distance = dec_dist;
   RMotor.iq17user_distance = LMotor.iq17user_distance = dist;

   RMotor.iqTargetV= LMotor.iqTargetV = tar_vel;

   RMotor.iq17err_distance = RMotor.iq17user_distance - RMotor.iq17distance_sum;
   LMotor.iq17err_distance = LMotor.iq17user_distance - LMotor.iq17distance_sum;

   RMotor.iq17decel_vel = LMotor.iq17decel_vel = dec_vel;

   RMotor.u16decel_flag = LMotor.u16decel_flag = ON;

   __enable_irq();
}

void move_to_end( float dist, float vel, int32_t acc )
{
   __disable_irq();
   
   g_fp32time = (float)g_i32_Time_index * 0.000025f;
   
   RMotor.iqTargetA = LMotor.iqTargetA = (float)acc;
    
   LMotor.iq17decel_distance = RMotor.iq17decel_distance = dist;
   RMotor.iq17user_distance =  LMotor.iq17user_distance = dist;

   RMotor.iqTargetV = LMotor.iqTargetV = vel;

   RMotor.iq17err_distance = RMotor.iq17user_distance - RMotor.iq17distance_sum;
   LMotor.iq17err_distance = LMotor.iq17user_distance - LMotor.iq17distance_sum;

   RMotor.iq17decel_vel = LMotor.iq17decel_vel = 0.0f;

   RMotor.u16decel_flag = LMotor.u16decel_flag = ON;
   g_Flag.move_state = OFF;
    
   __enable_irq();
}
