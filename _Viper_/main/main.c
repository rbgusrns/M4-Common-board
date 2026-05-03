#define _MAIN_
#define __STRUCT__


#include "DSP280x_Device.h"     // DSP281x Headerfile Include File
#include "DSP280x_Examples.h"  // DSP281x Examples Include File


void System_Init(void)
{
	DINT;				// 전체 인터럽트 금지
	InitSysCtrl();		// 워치록 금지, PLL 초기화, 주변 장치 클럭설정
	InitGpio();			// 입출력 포트 초기화	
	InitCpuTimers();
	
	MemCopy(&RamfuncsLoadStart, 	&RamfuncsLoadEnd, 		&RamfuncsRunStart); 
	MemCopy(&RamfuncsLoadStart1, 	&RamfuncsLoadEnd1, 	&RamfuncsRunStart1);
	
	InitSci();			
	InitSpi();
	InitPieCtrl();		// PIE 제어 레지스터 초기화 동작
	IER = 0x0000;		// 인터럽트 인에이블 레지스터 클리어
	IFR = 0x0000;		// 인터럽트 플래그 레지스터 클리어
	InitPieVectTable();
	InitAdc();

	Init_ISR();

	InitEPWM( &LeftPwmRegs );
	InitEPWM( &RightPwmRegs );
	
	InitEQep( &LeftQepRegs );
	InitEQep( &RightQepRegs );
	
}

void Variable_Init( void )
{
	g_int32_sen_cnt = 0;
	g_int32_copmare_cnt = 0;
	g_u16pos_cnt=6; 
	g_pos.iq10temp_position= _IQ10(0.0);
	g_pos.iq7temp_pos = _IQ7(0.0);
	
	i=0;
   
    g_Flag.cross_flag = OFF;
    g_Flag.start_flag = OFF;
    g_Flag.end_flag = OFF;

	g_pos.u16state = 0x0000;
	g_u16turn_dist = 73;
	A_HANDLE = 0;
	D_HANDLE = 0;

	g_int32_cross_cnt = 0;
	g_int32_turnmark_cnt = 0;
	g_int32_rturnmark_cnt = 0;
	g_int32_lturnmark_cnt = 0;
	g_int32_lineout_cnt = 0;
	g_int32_start_end_cnt = 0;
	g_u32_ACC_targetval=3200;
	g_u32_VEL_targetval=1800;
	g_q17user_vel=(g_u32_VEL_targetval<<17);
	g_u32_END_ACC_targetval = 9000;
	U16_turnmark_cnt=0;

	g_u32_END_VEL_targetval = 1300;
	g_int32turn_45_VEL = 2200;
	g_int32turn_90_VEL = 2200;
	g_int32turn_180_VEL = 2100;
	g_int32turn_270_VEL = 2000;
	g_int32turn_LARGE_VEL = 2300;
    g_int32short_ACC = 800;
    g_int32mid_ACC = 2500;
    g_int32long_ACC = 3300;
	g_int32large_ACC=1500;
	g_q7large_vel=_IQ7(2000);
	
	g_i16_handle_acc=2680;
	g_i16_handle_dec=2300;

	//g_q17_handle_acc = _IQ(0.00002680);
	//g_q17_handle_dec = _IQ(0.0002300);

	//g_q17_handle_acc = _IQ(0.00002970);
	//g_q17_handle_dec = _IQ(0.0002550);

	a=0;
	b=0;
	c=0;
	d=0;
	S=460;
	N=0;
}



void main(void)
{	
	System_Init();
	Variable_Init();
	sen_vari_init();
	Race_Init();
 	
	while(1)
	{
		menu();
	}
}

void Delay(Uint32 Cnt)
{
	while(Cnt--)
	{
		asm("		nop");
		
		asm("	nop");	
	}
}


