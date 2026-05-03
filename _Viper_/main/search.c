//###########################################################################
//
// FILE		: search.c
//
// TITLE		: _666_ Tracer search source file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hertz
//
//###########################################################################
// $Release Date: 2009.11.15 $
//###########################################################################


#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File

void Race_Init()
{
	
    g_Flag.move_state = OFF;
	g_Flag.Lturnmark_flag=OFF;
	g_Flag.Rturnmark_flag=OFF;
	
    g_int32_lineout_cnt = 0;
    g_int32_isr_cnt = 0;
    g_int32speed_up_cnt = 0;
		
	g_Flag.motor = OFF;
    g_Flag.cross_flag= OFF;
    g_Flag.lineout_flag= OFF;
    g_Flag.stop_check = OFF;
    g_rmark.u16cross_flag = OFF;
    g_lmark.u16cross_flag = OFF;
    g_rmark.u16single_flag = OFF;
    g_lmark.u16single_flag = OFF;
	g_Flag.move_state= OFF;
	g_Flag.race_start = OFF;
	g_Flag.first_race = OFF;
    g_Flag.second_race = OFF;
    
	g_Flag.straight_run = OFF;
	g_Flag.speed_up = OFF;
	g_Flag.speed_up_start= OFF;
    
	 
    g_motor.iq15GoneDist = RMotor.iq15GoneDist = LMotor.iq15GoneDist = _IQ15( 0.0 );
    g_motor.iq17Turnmark_Check_Dist = RMotor.iq17Turnmark_Check_Dist = LMotor.iq17Turnmark_Check_Dist = _IQ( 0.0 );
    g_motor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = LMotor.iq15Cross_Check_Dist = _IQ15( 0.0 );
    RMotor.iqNextV = LMotor.iqNextV = _IQ( 0.0 );

    g_u32_L_index = 0;
    g_u32_R_index = 0;
	g_q15cross_dist = _IQ(0.0);
	
	for(i=0; i<256; i++)
	{
		search_info[i].int32turn_way=0;
	}
	U16_turnmark_cnt=0;

	read_acc_rom();
    read_vel_rom();
	read_end_acc_rom();
	read_handle_acc_rom();
    read_handle_dec_rom();
	maxmin_read_rom();
	
   	g_q17_handle_acc = _IQmpyIQX(_IQ(g_i16_handle_acc), 17, _IQ27(0.00000001), 27);
	g_q17_handle_dec = _IQmpyIQX(_IQ(g_i16_handle_dec), 17, _IQ27(0.0000001), 27);

}


void F_1st_run()
{
	a=0;
	b=0;
	c=0;
	d=0;
	StartCpuTimer0();
	VFDPrintf("_ _GO_ _");
	DELAY_US(100000);
		
	search_race();
		 
	VFDPrintf("__END___");
	


	a=1;
	b=2; //go motor
}


int race_stop_check( void )
{
    
    if( !g_Flag.stop_check )return 0; //주행중이면 return
	
	 
	if( (RMotor.iqNextV < _IQ(30)) && (LMotor.iqNextV < _IQ( 30.0 )) )
	{
		while( (RMotor.iqNextV != _IQ( 0.0 )) && (LMotor.iqNextV != _IQ( 0.0 )) )
		{
        	RMotor.iqTargetV = LMotor.iqTargetV = _IQ( 0.0 );
            MOTOR_STOP;
		}

        
		g_Flag.motor = OFF;	

        
		StopCpuTimer0();
        MOTOR_STOP;
        
        
		if(g_Flag.first_race)
		{
			while(SW_U)
			{
            	VFDPrintf("MARK:%u", U16_turnmark_cnt);
			}
			line_info(NULL);
			write_mark_cnt_rom();
			write_line_info_rom();

			VFDPrintf("__SAVE__");
			DELAY_US(1000000);
			VFDPrintf("T:%3.2lf",g_fp32time);
	
		}
		
	}
		
	return 0;
}


int lineout()
{
	
	if ((g_pos.iq10temp_position>=_IQ10(16000) || g_pos.iq10temp_position<=_IQ10(-16000)) && (S6==_IQ(0) && S7==_IQ(0) && S8== _IQ(0) && S9==_IQ(0)))	
		
	{
	g_Flag.end_flag = ON;
	
	StopCpuTimer0();
	MOTOR_STOP;
	
	return g_Flag.end_flag;
	}

	else return 0;
}


void search_race()
{
    a=0;
    motor_vari_init();
    DELAY_US(500000);
    VFDPrintf("        ");
   

    g_Flag.first_race = ON;

    U16_turnmark_cnt=0;
    g_Flag.cross_flag = OFF;
    g_Flag.start_flag = OFF;
    g_Flag.end_flag = OFF;
 
    move_to_move(_IQ(500.0),_IQ(0.0),_IQ(g_u32_VEL_targetval),_IQ(g_u32_VEL_targetval),g_u32_ACC_targetval);

    g_Flag.motor = ON;
	g_Flag.move_state=ON;
	
	
    while(1)
    { 
      
		make_position(); //포지션 갱신

		Handle(); // 핸들값 갱신

		g_lmark.iq17turnmark_dist = g_rmark.iq17turnmark_dist = _IQmpy( (RMotor.iq17Turnmark_Check_Dist + LMotor.iq17Turnmark_Check_Dist), _IQ( 0.5 ));
	 	//턴마크 체크 거리값 갱신

		turn_decide(&g_lmark, &g_rmark); //왼쪽 턴마크 체킹
		turn_decide(&g_rmark, &g_lmark); //오른쪽 턴마크 체킹

		if( g_int32_isr_cnt )
		{	
			if( line_out_func() || race_stop_check() )		return;
			g_int32_isr_cnt = 0;
		}
        
    }

}

