//###########################################################################
//
// FILE		: Motor.c
//
// TITLE	: Motor c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.16 $
//###########################################################################

#define   _MOTOR_


#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Motor.h"

void F_ENDACCEL()
{
	while(SW_D)
	{
		
		VFDPrintf("EDA:%lu",g_u32_END_ACC_targetval);

		if (!SW_R)
		{
			DELAY_US(135000);
			g_u32_END_ACC_targetval+=500;
		}

		else if (!SW_L)

		{
			DELAY_US(135000);
			g_u32_END_ACC_targetval-=500;
		}

		else if (!SW_U)

		{
			DELAY_US(135000);
			g_u32_END_ACC_targetval=8000;
		}
		
	}
	write_end_acc_rom();
	a=2;
	b=2;

}



void F_ACCELERATION()

{
	a=0;
			
	while(SW_D)
	{
				
		VFDPrintf("ACC=%lu",g_u32_ACC_targetval);
		
		if (!SW_R) 
		{
			DELAY_US(125000);
			g_u32_ACC_targetval+=100;
		}
				
		else if (!SW_L) 
				
		
		{	
			DELAY_US(125000);
			g_u32_ACC_targetval-=100;
		}
					
	}
	
	DELAY_US(150000);

	while(SW_D)
	{
				
		VFDPrintf("ACC=%lu",g_int32long_ACC);
		
		if (!SW_R) 
		{
			DELAY_US(125000);
			g_int32long_ACC+=100;
		}
				
		else if (!SW_L) 
				
		
		{	
			DELAY_US(125000);
			g_int32long_ACC-=100;
		}
					
	}
	
	write_acc_rom();
	a=2;
	b=0;
	DELAY_US(100000);
}



void F_HANDLE_ACC()
{
	while(SW_D)
	{

		//DEFAULT g_q17_handle_acc = _IQ(0.00002680)
		
		VFDPrintf("HDA=%4u",g_i16_handle_acc);
	
		if (SW_R==0) 
		{
			DELAY_US(125000);
			g_i16_handle_acc+=10;
		}
			
		else if (SW_L==0) 
				
		{
			DELAY_US(125000);
			g_i16_handle_acc-=10;
		}
		
	}
	write_acc_handle_rom();
	a=3;
	b=0;
	c=0;
	DELAY_US(100000);
}


void F_HANDLE_DEC()
{
	
	while(SW_D)
	{

		//DEFAULT g_q17_handle_dec = _IQ(0.0002300)
			
		VFDPrintf("HDD=%4u",g_i16_handle_dec);
	
		if (SW_R==0) 
		{
			DELAY_US(125000);
			g_i16_handle_dec +=10;
		}
			
		else if (SW_L==0) 
				
		{	
			DELAY_US(125000);
			D_HANDLE-=10;
			g_i16_handle_dec -=10;
		}
				
	}
	write_dec_handle_rom();
	a=4;
	b=0;
	c=0;
	DELAY_US(100000);
}

void F_TURNDIST()
{
	while(SW_D)
	{
		VFDPrintf("DIST=%u",g_u16turn_dist);

		if (!SW_R) 
		{
			DELAY_US(125000);
			g_u16turn_dist+=1;
		
		}
		
		else if (!SW_L) 
			
		{
			DELAY_US(125000);
			g_u16turn_dist-= 1;
		
		}

	}
	a=3;
	b=2;
}


void F_VELOCITY()
{
	a=0;
	
	while(SW_D)
	{
		VFDPrintf("VEL=%lu",g_u32_VEL_targetval);

		if (!SW_R) 
		{
			DELAY_US(125000);
			g_u32_VEL_targetval+=50;
		
		}
		
		else if (!SW_L) 
			
		{
			DELAY_US(125000);
			g_u32_VEL_targetval-=50;
		
		}
			
	}
	write_vel_rom();
	a=1;
	b=0;
}


void motor_vari_init( void )
{
	// 모터 제어 환경 변수 초기화
	Init_MotorCtrlVar( &LMotor );
	Init_MotorCtrlVar( &RMotor );
}
void Init_MotorCtrlVar( MOTORCTRL *pM )
{
	memset( pM, 0, sizeof(MOTORCTRL) ) ;

	pM->iqTargetA = _IQ17( g_u32_ACC_targetval );	// 목표 가속도
	pM->iq24TargetA_1 = _IQ24(0.0);
	pM->iqTargetV = _IQ17( g_u32_VEL_targetval );	// 목표 속도	
	pM->iqDist = _IQ17(0.0);
	pM->iqVelo = _IQ17(0.0); 
	pM->iqNextV = _IQ17(0.0);
	
	pM->iqAmpyS = _IQ17(0.0);
	
	pM->iqHandle = _IQ17(1.0);
	pM->iqTotalDis = _IQ17(0.0);
	pM->iq24TimeValue = _IQ24(0.0);
	pM->u32_Period = 0;
	pM->u16_pPeriod = 0;
	pM->u32_Period_Cnt = 0;

    pM->iq15Cross_Check_Dist = _IQ15(0.0);

}

void Motor_CalBaseMotionValue( MOTORCTRL *pM )
{	
	if(pM->iqNextV < pM->iqTargetV) //다음 속도가 목표 속도보다 작을 경우 
	{
		pM->iqVelo = pM->iqNextV;
		pM->iqAmpyS = _IQmpy(STEP_2D, pM->iqTargetA); 
		pM->iqNextV = _IQ6toIQ( _IQ6sqrt( _IQtoIQ6(pM->iqAmpyS) + _IQ6mpy(_IQtoIQ6(pM->iqVelo),_IQtoIQ6(pM->iqVelo)))); //가속도를 토대로 속력구함 
		
		pM->iq24TargetA_1 = ( _IQmpy(pM->iqTargetA, _IQ(0.01)) << 7);
		pM->iq24TargetA_1 = _IQ24div(_IQ24(1.0), pM->iq24TargetA_1); //1/a
		pM->iq24TargetA_1 = _IQ24mpy(pM->iq24TargetA_1, _IQ24(0.01));// 1/100a

		
		pM->iq24TimeValue = _IQ24mpy( _IQtoIQ24((pM->iqNextV - pM->iqVelo)), pM->iq24TargetA_1); //(v1-v0)/100a
		
		pM->u32_Period = (Uint32)( _IQmpy( _IQ17mpyIQX( _IQ1(40000.0), 1, pM->iq24TimeValue, 24), pM->iqHandle ) >> 17);	
                                                                                                     
		pM->u32_Period_Cnt = 0;	

        
		if( pM->iqTargetV <= pM->iqNextV ) //다음 속도가 목표 속도보다 클 경우 
			pM->iqNextV = pM->iqTargetV;

	}
	else
	{
		pM->iqVelo = pM->iqNextV;
		pM->iqAmpyS = _IQmpy(STEP_2D, pM->iqTargetA);
		pM->iqNextV = _IQ6toIQ( _IQ6sqrt( _IQ6mpy(_IQtoIQ6(pM->iqVelo),_IQtoIQ6(pM->iqVelo)) - _IQtoIQ6(pM->iqAmpyS)));
		pM->iq24TargetA_1 = ( _IQmpy(pM->iqTargetA, _IQ(0.01)) << 7);
		pM->iq24TargetA_1 = _IQ24div(_IQ24(1.0), pM->iq24TargetA_1);
		pM->iq24TargetA_1 = _IQ24mpy(pM->iq24TargetA_1, _IQ24(0.01));

		pM->iq24TimeValue = _IQ24mpy( _IQtoIQ24((pM->iqVelo - pM->iqNextV)), pM->iq24TargetA_1);

		pM->u32_Period = (Uint32)( _IQmpy( _IQmpyIQX( _IQ1(40000.0), 1, pM->iq24TimeValue, 24), pM->iqHandle ) >> 17);

		pM->u32_Period_Cnt = 0;

		if( pM->iqTargetV >= pM->iqNextV )
			pM->iqNextV = pM->iqTargetV;		
	}
}

void R_Motor_ON( MOTORCTRL*pM )
{
        
    pM->iq17Turnmark_Check_Dist += STEP_D; //턴마크 체크 이동거리 
    pM->iq15Cross_Check_Dist += q15STEP_D;    // 크로스 체크 이동거리 
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
    //저장된 라인 거리 - 저장중인 라인 거리 
    decel_calculation();
}

void decel_calculation()
{
   if( LMotor.u16decel_flag )
   {
      if( LMotor.iq17decel_distance >= _IQabs( LMotor.iq17err_distance ) )
      {   //감속시작할거리가 남은 거리보다 크거나 같으면..

         RMotor.iqTargetV = RMotor.iq17decel_vel; 
         LMotor.iqTargetV = LMotor.iq17decel_vel;

         RMotor.u16decel_flag = LMotor.u16decel_flag = OFF;

         g_Flag.speed_up = OFF;
         g_Flag.speed_up_start = OFF;
      }
   }
   else if( RMotor.u16decel_flag )
   {
      if( RMotor.iq17decel_distance >= _IQabs( RMotor.iq17err_distance ) )
      {
         
         RMotor.iqTargetV = RMotor.iq17decel_vel;
         LMotor.iqTargetV = LMotor.iq17decel_vel;

         RMotor.u16decel_flag = LMotor.u16decel_flag = OFF;

         g_Flag.speed_up = OFF;
         g_Flag.speed_up_start = OFF;
      }
   }
}

void move_to_move( volatile _iq17 dist, volatile _iq17 dec_dist, volatile _iq17 tar_vel, volatile _iq17 dec_vel, volatile int32 acc )
{ 	//dist거리를 cur_vel속도에서 tar_vel속도로 변속한 후 dec_vel속도로 acc가속도로 감속
   StopCpuTimer0();

   //TxPrintf("dist:%lf  dec_dist:%lf  tar_vel:%lf  dec_vel:%lf  acc:%lu",_IQtoF(dist),_IQtoF(dec_dist),_IQtoF(tar_vel),_IQtoF(dec_vel),acc);

   RMotor.iqTargetA = LMotor.iqTargetA = acc << 17;

   RMotor.iq17decel_distance = LMotor.iq17decel_distance = dec_dist;
   RMotor.iq17user_distance = LMotor.iq17user_distance = dist;

   //if( g_Flag.first_race || ( g_Flag.second_race && !( search_info[ U16_turnmark_cnt ].int32turn_dir & ( STRAIGHT ) ) ) )
   RMotor.iqTargetV= LMotor.iqTargetV = tar_vel;

   RMotor.iq17err_distance = RMotor.iq17user_distance - RMotor.iq17distance_sum;
   LMotor.iq17err_distance = LMotor.iq17user_distance - LMotor.iq17distance_sum;

   RMotor.iq17decel_vel = LMotor.iq17decel_vel = dec_vel;

   RMotor.u16decel_flag = LMotor.u16decel_flag = ON;

   StartCpuTimer0();
}

void move_to_end( volatile _iq17 dist, volatile _iq17 vel, volatile int32 acc )
{
    
   StopCpuTimer0();
   g_fp32time = (float32)g_i32_Time_index * (float32)(0.000025);//
   
    RMotor.iqTargetA = LMotor.iqTargetA = acc << 17;
    
    LMotor.iq17decel_distance = RMotor.iq17decel_distance = dist;

    RMotor.iq17user_distance =  LMotor.iq17user_distance = dist;

    RMotor.iqTargetV = LMotor.iqTargetV = vel;

    RMotor.iq17err_distance = RMotor.iq17user_distance - RMotor.iq17distance_sum;
    LMotor.iq17err_distance = LMotor.iq17user_distance - LMotor.iq17distance_sum;

    RMotor.iq17decel_vel = LMotor.iq17decel_vel = _IQ( 0.0 );

    RMotor.u16decel_flag =  LMotor.u16decel_flag = ON;

    g_Flag.move_state = OFF;
    
    StartCpuTimer0();
}



