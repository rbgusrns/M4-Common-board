//###########################################################################
//
// FILE		: Variable.h
//
// TITLE	: Variable.h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.6 $
//###########################################################################



#ifdef _MAIN_
	#ifndef __VARIABLE_EXT__
		#define __VARIABLE_EXT__
	#endif
#else
	#ifndef __VARIABLE_EXT__
		#define __VARIABLE_EXT__	extern
	#endif
#endif	

__VARIABLE_EXT__ int a,b,d,A_HANDLE,D_HANDLE,cnt,S,N;

__VARIABLE_EXT__ double c;

__VARIABLE_EXT__ long adc_L,
					  adc_R;


#define L_LED_ON GpioDataRegs.GPASET.bit.GPIO27=1;
#define L_LED_OFF GpioDataRegs.GPACLEAR.bit.GPIO27=1;

#define R_LED_ON GpioDataRegs.GPASET.bit.GPIO25=1;
#define R_LED_OFF GpioDataRegs.GPACLEAR.bit.GPIO25=1;

#define BLUE_ON GpioDataRegs.GPASET.bit.GPIO31=GpioDataRegs.GPBSET.bit.GPIO33=1;
#define BLUE_OFF GpioDataRegs.GPACLEAR.bit.GPIO31=GpioDataRegs.GPBCLEAR.bit.GPIO33=1;


#define SW_U GpioDataRegs.GPADAT.bit.GPIO30 
#define SW_D GpioDataRegs.GPADAT.bit.GPIO20 
#define SW_L GpioDataRegs.GPADAT.bit.GPIO24 
#define SW_R GpioDataRegs.GPADAT.bit.GPIO21  

#define S0 g_sen[0].iq17_ON_OFF_value
#define S1 g_sen[1].iq17_ON_OFF_value
#define S2 g_sen[2].iq17_ON_OFF_value
#define S3 g_sen[3].iq17_ON_OFF_value
#define S4 g_sen[4].iq17_ON_OFF_value
#define S5 g_sen[5].iq17_ON_OFF_value
#define S6 g_sen[6].iq17_ON_OFF_value
#define S7 g_sen[7].iq17_ON_OFF_value
#define S8 g_sen[8].iq17_ON_OFF_value
#define S9 g_sen[9].iq17_ON_OFF_value
#define S10 g_sen[10].iq17_ON_OFF_value
#define S11 g_sen[11].iq17_ON_OFF_value
#define S12 g_sen[12].iq17_ON_OFF_value
#define S13 g_sen[13].iq17_ON_OFF_value
#define S14 g_sen[14].iq17_ON_OFF_value
#define S15 g_sen[15].iq17_ON_OFF_value

#define	STRAIGHT 0x0001   //0000 0000 0000 0001 
#define	LEFT_TURN 0x0010  //0000 0000 0000 0010 
#define	RIGHT_TURN 0x0100 //0000 0000 0000 0100 
#define	END_TURN 0x0008   //0000 0000 0000 1000 
#define	TURN_45	0x0010    //0000 0000 0001 0000 
#define	TURN_90 0x0020    //0000 0000 0010 0000 
#define	TURN_180 0x0040   //0000 0000 0100 0000 
#define	TURN_270 0x0080   //0000 0000 1000 0000 
#define	LARGE_TURN 0x0100 //0000 0001 0000 0000 

#define POS_END _IQ7(16000)


typedef enum//If you make set value of first member, after members are set in ascending power . If you don't set first member then it automatically set in "0".
{
	NONE ,    //0
	S_ONE , 
	S_TWO ,
	S_THREE , 
	S_FOUR , 
	S_FIVE , 
	S_SIX , 
	S_SEVEN , 
	S_EIGHT , 
	S_NINE , 
	S_TEN , 
	S_ELEVEN , 
	S_TWELVE  //12
}pos_idx_e;

typedef enum
{
	NON_SHIFT ,  //0
	ONE_SHIFT , 
	TWO_SHIFT ,	
	THREE_SHIFT , 
	FOUR_SHIFT , 
	FIVE_SHIFT , 
	SIX_SHIFT , 
	SEVEN_SHIFT ,
	EIGHT_SHIFT	 //8
}shift_rate_e;


__VARIABLE_EXT__ _iq7 g_q7large_vel;

__VARIABLE_EXT__ _iq15 g_q15cross_dist;

__VARIABLE_EXT__ _iq17 g_q17_handle_dec,
					   g_q17_handle_acc,
					   g_q17cross_dist,
					   g_q17user_vel,
					   iq17_ON_OFF_SUM_value;


__VARIABLE_EXT__ MOTORCTRL	LMotor, RMotor;

__VARIABLE_EXT__ float32 g_fp32time;

__VARIABLE_EXT__ volatile Uint32 g_int32_sen_cnt,
                          g_int32_copmare_cnt,
                          g_int32_lineout_cnt,
                          g_u32_ACC_targetval,
                          g_u32_VEL_targetval,
                          g_u32_END_ACC_targetval,
                          g_u32_END_VEL_targetval,
                          g_u32_R_index,
                          g_u32_L_index,
                          g_int32_dist_check,
                          g_int32_start_end_cnt,
                          g_int32_cross_cnt,
                          g_int32_rturnmark_cnt,
                          g_int32_lturnmark_cnt,
                          g_int32_turnmark_cnt,
                          g_int32total_cnt,
						  g_int32_lineout_cnt;


__VARIABLE_EXT__ Uint32 g_int32_isr_cnt;


__VARIABLE_EXT__ int32 g_i32_Time_index;
__VARIABLE_EXT__ int32 g_u32_sec_acc;
__VARIABLE_EXT__ int32 g_int32turn_45_VEL;
__VARIABLE_EXT__ int32 g_int32turn_90_VEL;
__VARIABLE_EXT__ int32 g_int32turn_180_VEL;
__VARIABLE_EXT__ int32 g_int32turn_270_VEL;
__VARIABLE_EXT__ int32 g_int32turn_LARGE_VEL;
__VARIABLE_EXT__ int32 g_int32long_ACC;
__VARIABLE_EXT__ int32 g_int32mid_ACC;
__VARIABLE_EXT__ int32 g_int32short_ACC;
__VARIABLE_EXT__ int32 g_int32speed_up_cnt;
__VARIABLE_EXT__ int32 g_int32large_ACC;


__VARIABLE_EXT__ volatile Uint16 U16_turnmark_cnt;

__VARIABLE_EXT__  Uint16 i,
						 g_u16pos_cnt,
						 g_u16turn_dist,
						 g_i16_handle_acc,
						 g_i16_handle_dec;


#define R_MOTOR GpioDataRegs.GPADAT.all = ( GpioDataRegs.GPADAT.all & 0xfffffff0 )| right_step[g_u32_R_index & 0x3]//0,1,2,3
#define L_MOTOR GpioDataRegs.GPADAT.all = ( GpioDataRegs.GPADAT.all & 0xffff0fff )| left_step[g_u32_L_index & 0x3]//12,13,14,15
#define MOTOR_STOP GpioDataRegs.GPADAT.all = ( GpioDataRegs.GPADAT.all & 0xffff0ff0 )

