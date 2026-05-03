//###########################################################################
//
// FILE		: Sensor.c
//
// TITLE	: Senser c file.
//
// Author	:  Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.12.10 $
//###########################################################################

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Sensor.h"

#define LEFT_ENABLE    0xf000
#define RIGHT_ENABLE   0x000f

/* 1-2 step
//A'=12, A=13, B'=14, B=15 //->A'->A'B->B->AB->A->AB'->B'->A'B' //reverse time cycle
//BB'AA' 0000 0000 0000
volatile int32 left_step[] = 
{
	0x1000, 0x9000, 0x8000, 0xa000, 0x2000, 0x6000, 0x4000, 0x5000	//1-2 step
};

//A'=0, A=1, B'=2, B=3 //->A->AB->B->A'B->A'->A'B'->B'->AB' // time cycle   
//0000 0000 0000 BB'AA'
volatile int32 right_step[] = 
{ 
	0x0002, 0x000a, 0x0008, 0x0009, 0x0001, 0x0005, 0x0004, 0x0006	//1-2 step
};
*/



volatile int32 left_step[] = 
{
	0x9000,0xa000,0x6000,0x5000	//2-PHASE
};

volatile int32 right_step[] = 
{ 
	0x000a,0x0009,0x0005,0x0006	//2-PHASE
};

typedef volatile enum 
{
	#if 1
	SEN0 = 4,
	SEN1 = 5,
	SEN2 = 6,
	SEN3 = 7,
	SEN4 = 8,
	SEN5 = 9,
	SEN6 = 10,
	SEN7  = 11,
	SEN_NUM= 8,
	ADC_NUM = 16
	
	#endif	
}sensor_num;


void F_POSCHECK()
{
	StartCpuTimer0();
	VFDPrintf("POSCHECK");
	DELAY_US(500000);
	g_u16pos_cnt=6;

	while(GpioDataRegs.GPADAT.bit.GPIO20==1) //down
	{
		g_pos.iq17sum = _IQ(0);
		g_pos.iq7sum_of_sec = _IQ7(0);

		g_pos.iq17sum += g_sen[g_u16pos_cnt + 0].iq17_127_value;
		g_pos.iq17sum += g_sen[g_u16pos_cnt + 1].iq17_127_value;
		g_pos.iq17sum += g_sen[g_u16pos_cnt + 2].iq17_127_value;
		g_pos.iq17sum += g_sen[g_u16pos_cnt + 3].iq17_127_value;

		g_pos.iq7sum = g_pos.iq17sum >> 10;


		if( g_pos.iq17sum )
	{	
		
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 0 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 0 ].iq17_127_value, 17 );
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 1 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 1 ].iq17_127_value, 17 );
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 2 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 2 ].iq17_127_value, 17 );
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 3 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 3 ].iq17_127_value, 17 );

		g_pos.iq7temp_pos = _IQ7div( g_pos.iq7sum_of_sec, g_pos.iq7sum );

		if( g_pos.iq7temp_pos >= POS_END )	//상한선 
			g_pos.iq7temp_pos = POS_END;

		else if( g_pos.iq7temp_pos <= -POS_END ) //하한선 	
			g_pos.iq7temp_pos = -POS_END;
		
		else;
		
		g_pos.iq10temp_position = g_pos.iq7temp_pos<<3;

			position_enable(&g_pos);


			VFDPrintf("P:%6ld",g_pos.iq10temp_position>>10);
			
			if (g_pos.iq10temp_position>=_IQ10(16000))
			{
				L_LED_ON;
				R_LED_OFF;
			}

			else if (g_pos.iq10temp_position<=-_IQ10(16000))
			{
				R_LED_ON;
				L_LED_OFF;
			}
			else
			{
				L_LED_OFF;
				R_LED_OFF;
			}

		}
	
	}
	StopCpuTimer0();
	a=4;

}



void F_4095()
{
	a=0;
	StartCpuTimer0();

	VFDPrintf("        ");
	
	do
	{

		
	
		if (!SW_R)	// right	

		{
			a++; 
			DELAY_US(100000);
		}

		else if (!SW_L)	//left	

		{
			a--; 
			DELAY_US(100000);
		}

		if (a<0) a=15;

		else if (a>15) a=0;

		

		VFDPrintf("S%d:%.0f",a,_IQtoF(g_sen[a].iq17_4095_value)); 

	
	
	

	} while(SW_D); // down

	a=2;
	
	StopCpuTimer0();
	
	
	
	
}

void F_Max_min()
{
	int16 sen_value_setting= 0;
	
	StartCpuTimer0();

		VFDPrintf("LOADING_");
		DELAY_US(500000);

		for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
		{
			g_sen[sen_value_setting].iq17_4095_max_value=0;
			g_sen[sen_value_setting].iq17_4095_min_value=0;
		}

		while(SW_R) // right
		{
			VFDPrintf("Set_MAX_");
			
			for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
		
			{
				if (g_sen[sen_value_setting].iq17_4095_max_value<g_sen[sen_value_setting].iq17_4095_value)
	
				g_sen[sen_value_setting].iq17_4095_max_value=g_sen[sen_value_setting].iq17_4095_value;
			}

		}
		
		while(SW_D) // down
		{

			{
				VFDPrintf("Set_MIN_");

				for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )
		
				{
					if (g_sen[sen_value_setting].iq17_4095_min_value<g_sen[sen_value_setting].iq17_4095_value)
	 
					g_sen[sen_value_setting].iq17_4095_min_value=g_sen[sen_value_setting].iq17_4095_value;
				}
	
			}
		}
		maxmin_write_rom();

		StopCpuTimer0();
		
		DELAY_US(125000);

	

}

void F_127()
{	
		StartCpuTimer0();
		a=0;
		VFDPrintf("        ");
	
	do
	{

		
	
		if (!SW_R)	// right	

		{
			a++; 
			DELAY_US(100000);
		}

		else if (!SW_L)	//left	

		{
			a--; 
			DELAY_US(100000);
		}

		if (a<0) a=15;

		else if (a>15) a=0;


		VFDPrintf("S%d:%.0f",a,_IQtoF(g_sen[a].iq17_127_value)); 

	
	
	

	} while(SW_D); // down

	
	StopCpuTimer0();
	
	a=3;
	
}




volatile Uint16 sen_arr[ SEN_NUM ] = {SEN0, SEN1, SEN2, SEN3, SEN4, SEN5, SEN6, SEN7};

volatile Uint16 adc_arr[ ADC_NUM ] = {ADC0, ADC1, ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, 
									  ADC8, ADC9, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15
									 };

volatile Uint16 state_table[] = 
{
	0xf000 , 0xf000 , 0xf000 , 
		
	0xf000 ,  
	0x7800 ,  
	0x3c00 ,  
	0x1e00 ,  
	0x0f00 ,  
	0x0780 , 
	0x03c0 , 
	0x01e0 ,  
	0x00f0 ,  
	0x0078 ,  
	0x003c ,  
	0x001e ,  
	0x000f ,  
	
	0x000f , 0x000f , 0x000f
};



interrupt void Sensor_Value(void)
{
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
	GpioDataRegs.GPASET.all =(ON_L << sen_arr[g_int32_sen_cnt ]); //1 // GPIO 4 ~ 11 번

	AdcRegs.ADCCHSELSEQ1.all = adc_arr[ g_int32_sen_cnt ];
	AdcRegs.ADCCHSELSEQ2.all = adc_arr[ g_int32_sen_cnt + SEN_NUM ]; 
	AdcRegs.ADCCHSELSEQ3.all = adc_arr[ g_int32_sen_cnt ];
	AdcRegs.ADCCHSELSEQ4.all = adc_arr[ g_int32_sen_cnt + SEN_NUM ]; 
	
	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1; 
}

interrupt void ADC_TIMER_ISR(void)
{
	adc_L=0;
	adc_R=0;
	
	
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
	GpioDataRegs.GPACLEAR.all =(ON_L << sen_arr[g_int32_sen_cnt]);

	adc_L += (long)AdcMirror.ADCRESULT0; 
	adc_L += (long)AdcMirror.ADCRESULT1; 
	adc_L += (long)AdcMirror.ADCRESULT2; 
	adc_L += (long)AdcMirror.ADCRESULT3; 
	
	adc_R += (long)AdcMirror.ADCRESULT4;
	adc_R += (long)AdcMirror.ADCRESULT5;
	adc_R += (long)AdcMirror.ADCRESULT6;
	adc_R += (long)AdcMirror.ADCRESULT7;
	
	adc_L += (long)AdcMirror.ADCRESULT8;
	adc_L += (long)AdcMirror.ADCRESULT9;
	adc_L += (long)AdcMirror.ADCRESULT10;
	adc_L += (long)AdcMirror.ADCRESULT11; 
	
	adc_R += (long)AdcMirror.ADCRESULT12;
	adc_R += (long)AdcMirror.ADCRESULT13;
	adc_R += (long)AdcMirror.ADCRESULT14;
	adc_R += (long)AdcMirror.ADCRESULT15; 
	
	AdcRegs.ADCTRL2.bit.RST_SEQ1 = 1; 
	AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1; 

	
	g_sen[g_int32_sen_cnt].iq17_4095_value = adc_L << 14; 
	g_sen[SEN_NUM + g_int32_sen_cnt ].iq17_4095_value = adc_R << 14;
	
	if( g_sen[ g_int32_copmare_cnt ].iq17_4095_value > g_sen[ g_int32_copmare_cnt ].iq17_4095_max_value )		
		g_sen[ g_int32_copmare_cnt ].iq17_127_value = _IQ(127);

	else if( g_sen[ g_int32_copmare_cnt ].iq17_4095_value < g_sen[ g_int32_copmare_cnt ].iq17_4095_min_value )	
		g_sen[ g_int32_copmare_cnt ].iq17_127_value = _IQ(0);
		
	else 
		g_sen[ g_int32_copmare_cnt ].iq17_127_value = 
		_IQ17mpy(_IQ17div( ( g_sen[ g_int32_copmare_cnt ].iq17_4095_value - g_sen[ g_int32_copmare_cnt ].iq17_4095_min_value ) , 
		( g_sen[ g_int32_copmare_cnt ].iq17_4095_max_value - g_sen[ g_int32_copmare_cnt ].iq17_4095_min_value )) , _IQ(127));

	if(g_sen[ g_int32_copmare_cnt ].iq17_127_value<_IQ(35))
		g_sen[ g_int32_copmare_cnt ].iq17_ON_OFF_value=_IQ(0);	
	
	else if(g_sen[ g_int32_copmare_cnt ].iq17_127_value>=_IQ(35))
		g_sen[ g_int32_copmare_cnt ].iq17_ON_OFF_value=_IQ(1);	

	else;

	if( g_sen[ g_int32_copmare_cnt ].iq17_127_value > _IQ(60))
		{
	        g_pos.u16state |= g_sen[ g_int32_copmare_cnt ].u16active_arr;
	    	g_Flag.lineout_flag= OFF;
	    }
	else
			g_pos.u16state &= g_sen[ g_int32_copmare_cnt ].u16passive_arr;	

	g_int32_copmare_cnt++;			
	
	if(g_int32_copmare_cnt >= ADC_NUM)
		g_int32_copmare_cnt = 0; 
	
	g_int32_sen_cnt++;

	if(g_int32_sen_cnt==SEN_NUM)
		
		g_int32_sen_cnt=0;

/******************************MOTOR***************************************/
	if( g_Flag.motor)
	{	
	
		g_int32_isr_cnt++;
        g_i32_Time_index++;
	
		if( ++LMotor.u32_Period_Cnt >= LMotor.u32_Period )
		{
			Motor_CalBaseMotionValue( &LMotor );
			g_u32_L_index++;
			L_MOTOR;	  	  
			L_Motor_ON(&LMotor); 
	
		}
		
		if( ++RMotor.u32_Period_Cnt >= RMotor.u32_Period )
		{
			Motor_CalBaseMotionValue( &RMotor );
			g_u32_R_index++;
			R_MOTOR;
			R_Motor_ON(&RMotor);
		}
	}
	else MOTOR_STOP;
	
}

int line_out_func( void )
{
	if( !g_pos.iq17sum )
	{	
		g_int32_lineout_cnt++;
        if( g_int32_lineout_cnt < 1000)		return 0;	//Delay

		g_int32_lineout_cnt = 0;

		//if ((g_pos.iq10temp_position>=_IQ10(16000) || g_pos.iq10temp_position<=_IQ10(-16000)) && (S6==_IQ(0) && S7==_IQ(0) && S8== _IQ(0) && S9==_IQ(0)))
		
		g_Flag.move_state = OFF;

		LMotor.iqTargetV = RMotor.iqTargetV = _IQ(0.0);
		LMotor.iqTargetA = RMotor.iqTargetA = _IQ(8000.0);

        StopCpuTimer0();

		MOTOR_STOP;

		VFDPrintf("Line Out");
		
        while(1)
        {
			
        }
		
	}
	else
	{	
		g_int32_lineout_cnt = 0;
        //g_Flag.line_out = OFF;
        
    }

	return 0;
}


void sensor_check_127(void)
{
	while(1)
	{
		if( g_sen[ g_int32_copmare_cnt ].iq17_4095_value > g_sen[ g_int32_copmare_cnt ].iq17_4095_max_value )		
			g_sen[ g_int32_copmare_cnt ].iq17_127_value = _IQ(127);
		
		else if( g_sen[ g_int32_copmare_cnt ].iq17_4095_value < g_sen[ g_int32_copmare_cnt ].iq17_4095_min_value ) 
			g_sen[ g_int32_copmare_cnt ].iq17_127_value = _IQ(0);
		
		else 
		{
			g_sen[ g_int32_copmare_cnt ].iq17_127_value = 
			_IQ17mpy(_IQ17div( ( g_sen[ g_int32_copmare_cnt ].iq17_4095_value - g_sen[ g_int32_copmare_cnt ].iq17_4095_min_value ) , 
			( g_sen[ g_int32_copmare_cnt ].iq17_4095_max_value - g_sen[ g_int32_copmare_cnt ].iq17_4095_min_value )) , _IQ(127));
		}
		
		g_int32_copmare_cnt++;			
		
		if(g_int32_copmare_cnt >= ADC_NUM)
			g_int32_copmare_cnt = 0; 
		
		g_int32_sen_cnt++;
		
		if(g_int32_sen_cnt==SEN_NUM)
			g_int32_sen_cnt=0;
	}
}

void start_end_check(void)
{
	if(!g_Flag.race_start)	//start
	{
		if( g_Flag.first_race )
		search_info[0].int32turn_way = STRAIGHT;
		g_Flag.race_start = ON;
        g_i32_Time_index = 0;
        U16_turnmark_cnt = 0;
		BLUE_ON;	
	}
	else  //end
	{

		if( U16_turnmark_cnt < 140 ) return; 
		
		g_Flag.move_state = OFF;
		
		if(g_Flag.first_race)
		{
            move_to_end( _IQ(200.0), _IQ(0), g_u32_END_ACC_targetval);
			VFDPrintf(" END_ON ");
			VFDPrintf("T:%3.2lf",g_fp32time);
		}
		else if(g_Flag.second_race)
		{
            VFDPrintf("2nd  END");
			move_to_end( _IQ(200.0), _IQ(0) , g_u32_END_ACC_targetval);
			LMotor.iq15GoneDist = RMotor.iq15GoneDist = _IQ15(0.0);
            VFDPrintf("T:%3.2lf",g_fp32time);
		}

		LMotor.iq17distance_sum = RMotor.iq17distance_sum = _IQ(0.0);
		g_Flag.stop_check = ON;
		
	}	
	
}

static int32 cross_check( void )
{
		volatile Uint16 state = 0x00;
		volatile Uint16 condition1 = 0x00;
		volatile Uint16 condition2 = 0x00;
		volatile Uint16 condition3 = 0x00;
	
		if( g_shift.u16sen_enable & RIGHT_ENABLE ) //우회전 
			state = ( Uint16 )9 + g_shift.u16sen_state; //17
			
		else if( g_shift.u16sen_enable & LEFT_ENABLE) //좌회전 
			state = ( Uint16 )9 - g_shift.u16sen_state;
		else	
			state = ( Uint16 )9;
	
		condition1 = (( g_pos.u16state & state_table[ state ] ) == state_table[ state ] );
		condition2 = (( g_pos.u16state & state_table[ state - 1 ] ) == state_table[ state - 1 ]);
		condition3 = (( g_pos.u16state & state_table[ state + 1 ] ) == state_table[ state + 1 ]);
		if( (condition1) || (condition2) || (condition3) )
		{
			if( g_Flag.cross_flag== OFF)
			{ 
				g_Flag.cross_flag= ON;
				
			   
			}
			else;
		}
		else if( g_Flag.cross_flag== ON )
		{	
			L_LED_ON;
			R_LED_ON;
			if(g_Flag.second_race) BLUE_ON;
			
			g_q15cross_dist = _IQ15mpy( ( RMotor.iq15Cross_Check_Dist + LMotor.iq15Cross_Check_Dist ), _IQ15(0.5));
			if( g_q15cross_dist > _IQ15( 140.0 ) )
			{	
				L_LED_OFF;
				R_LED_OFF;
				if((search_info[U16_turnmark_cnt].int32cross_check_dist == 0) && (g_Flag.first_race == ON)	)
					search_info[U16_turnmark_cnt].int32cross_check_dist = ((int32)(_IQ15mpy(RMotor.iq15GoneDist+LMotor.iq15GoneDist, _IQ15(0.5)))>>15) - 140;
				
				g_Flag.cross_flag= OFF; 											// 크로스 판별 플래그 OFF
				g_lmark.u16turn_flag = g_rmark.u16turn_flag = OFF;						// 턴마크 아니니간 턴마크 플래그 
				g_lmark.iq17turnmark_dist= g_rmark.iq17turnmark_dist = _IQ( 0.0 );		// 턴마크로 인식하면 안되니간 턴마크 체크 거리 초기화 
				LMotor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = _IQ15( 0.0 );// 크로스 거리 초기화 
				g_q15cross_dist = _IQ15( 0.0 ); 									// 크로스 거리 초기화 
	
			}
			else;
		}
		else
		{
			LMotor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = _IQ15( 0.0 );// 크로스 거리 초기화 
			g_q15cross_dist = _IQ15( 0.0 );
		}
		return 1;
	}



static void mark_enable_shift( turnmark_t *pleft , turnmark_t *pright )
{
	if( g_shift.u16sen_enable & RIGHT_ENABLE )  //오른쪽 턴일때 -> 마크를 오른쪽으로 당김
	{
		pleft->u16mark_enable = LEFT_ENABLE >>  g_shift.u16sen_state;
		pright->u16mark_enable = RIGHT_ENABLE >>  g_shift.u16sen_state;
	}

	else if( g_shift.u16sen_enable & LEFT_ENABLE )  //왼쪽 턴일 때 -> 마크를 왼쪽으로 당김
	{
		pleft->u16mark_enable = LEFT_ENABLE <<  g_shift.u16sen_state;
		pright->u16mark_enable = RIGHT_ENABLE >>  g_shift.u16sen_state;
	}


	else
	{
		pleft->u16mark_enable = LEFT_ENABLE;
		pright->u16mark_enable = RIGHT_ENABLE;
	}
   

}


void line_info(turnmark_t *p_mark)
{

	search_info[U16_turnmark_cnt].int32L_dist = ( int32 )( LMotor.iq15GoneDist >> 15);
	search_info[U16_turnmark_cnt].int32R_dist = ( int32 )( RMotor.iq15GoneDist >> 15);
	search_info[U16_turnmark_cnt].int32dist = ( search_info[U16_turnmark_cnt].int32L_dist + search_info[U16_turnmark_cnt].int32R_dist ) >> 1;

	if( p_mark == NULL ) search_info[U16_turnmark_cnt].int32turn_way = END_TURN;

	U16_turnmark_cnt++; //턴마크 증가
												
	search_info[U16_turnmark_cnt].int32turn_way = (p_mark == &g_lmark) ? ( LEFT_TURN ) : ( RIGHT_TURN );
	
	if( U16_turnmark_cnt && search_info[U16_turnmark_cnt].int32turn_way == search_info[U16_turnmark_cnt-1].int32turn_way )
		search_info[U16_turnmark_cnt].int32turn_way = STRAIGHT; //출발이 직진이므로 이전턴과 방향이 같으면 직진

	LMotor.iq17distance_sum = RMotor.iq17distance_sum = _IQ(0.0);
	LMotor.iq15GoneDist = RMotor.iq15GoneDist = _IQ15(0.0);	
}




void F_TURNMARK()
{	
	read_mark_cnt_rom();
	read_line_info_rom();
	cnt=0;
	VFDPrintf("MARK:%ld",g_int32total_cnt);

	DELAY_US(1000000);
	VFDPrintf("        ");
	
	while(SW_D)    
	{

		DELAY_US(135000);
		
		if(!SW_R)	cnt++;

		else if(!SW_L)	cnt--;

		else if(!SW_U) cnt+=10;

		VFDPrintf("T%d:%3lu",cnt,search_info[cnt].int32turn_way);
		
	}
	
	
}



void sen_vari_init(void)

{
	int16 sen_value_setting= 0;

	memset( ( void * )&g_sen , 0x00 , sizeof( sen_t) * 16 );
	memset( ( void * )&g_pos, 0x00 , sizeof( position_t ) );
	memset( ( void * )&g_rmark, 0x00 , sizeof( turnmark_t ) );
	memset( ( void * )&g_lmark, 0x00 , sizeof( turnmark_t ) );	
	//reset struct into "0" by using memory setting fuction
	
	for( sen_value_setting = 0 ; sen_value_setting < ADC_NUM ; sen_value_setting++ )	
	g_sen[sen_value_setting].iq17_4095_min_value = _IQ(4095.0);

	//g_u16sen_enable = 0xffff;

	#if 1
		g_sen[ 15 ].iq7weight = _IQ7(16000);		g_sen[ 0 ].u16active_arr = 0x8000; 		g_sen[ 0 ].u16passive_arr = 0x7fff;
		g_sen[ 14 ].iq7weight = _IQ7(13000);		g_sen[ 1 ].u16active_arr = 0x4000; 		g_sen[ 1 ].u16passive_arr = 0xbfff;
		g_sen[ 13 ].iq7weight = _IQ7(11000);		g_sen[ 2 ].u16active_arr = 0x2000; 		g_sen[ 2 ].u16passive_arr = 0xdfff;
		g_sen[ 12 ].iq7weight = _IQ7(8900);			g_sen[ 3 ].u16active_arr = 0x1000; 		g_sen[ 3 ].u16passive_arr = 0xefff;	
	
		g_sen[ 11 ].iq7weight = _IQ7(7000); 		g_sen[ 4 ].u16active_arr = 0x0800; 		g_sen[ 4 ].u16passive_arr = 0xf7ff;	
		g_sen[ 10 ].iq7weight = _IQ7(4000); 		g_sen[ 5 ].u16active_arr = 0x0400; 		g_sen[ 5 ].u16passive_arr = 0xfbff;	
		g_sen[ 9 ].iq7weight = _IQ7(2500);			g_sen[ 6 ].u16active_arr = 0x0200;		g_sen[ 6 ].u16passive_arr = 0xfdff; 
		g_sen[ 8 ].iq7weight = _IQ7(500);			g_sen[ 7 ].u16active_arr = 0x0100;		g_sen[ 7 ].u16passive_arr = 0xfeff;
	
		g_sen[ 7 ].iq7weight = _IQ7(-500); 			g_sen[ 8 ].u16active_arr = 0x0080;		g_sen[ 8 ].u16passive_arr = 0xff7f;
		g_sen[ 6 ].iq7weight = _IQ7(-2500); 		g_sen[ 9 ].u16active_arr = 0x0040;		g_sen[ 9 ].u16passive_arr = 0xffbf;
		g_sen[ 5 ].iq7weight = _IQ7(-4000); 		g_sen[ 10 ].u16active_arr = 0x0020;		g_sen[ 10 ].u16passive_arr = 0xffdf;
		g_sen[ 4 ].iq7weight = _IQ7(-7000); 		g_sen[ 11 ].u16active_arr = 0x0010;		g_sen[ 11 ].u16passive_arr = 0xffef;
	
		g_sen[ 3 ].iq7weight = _IQ7(-8900);			g_sen[ 12 ].u16active_arr = 0x0008;		g_sen[ 12 ].u16passive_arr = 0xfff7;
		g_sen[ 2 ].iq7weight = _IQ7(-11000);		g_sen[ 13 ].u16active_arr = 0x0004;		g_sen[ 13 ].u16passive_arr = 0xfffb;
		g_sen[ 1 ].iq7weight = _IQ7(-13000);		g_sen[ 14 ].u16active_arr = 0x0002;		g_sen[ 14 ].u16passive_arr = 0xfffd;
		g_sen[ 0 ].iq7weight = _IQ7(-16000);		g_sen[ 15 ].u16active_arr = 0x0001;		g_sen[ 15 ].u16passive_arr = 0xfffe;
	//   make sesor weight into vlaue => usually 16000         if sensor is active 1 on that sen 				if sensor is passive 0 on that sen
	//                                                                                1000 0000 0000 0000 = g_sen[0].active 		0111 1111 1111 1111 = g_sen[0].passive
	//   right is +16000, left is -16000                                  left is 0, right is 15							left is 0, right is 15	
	#endif

}

void make_position(void)
{
	g_pos.iq17sum = _IQ(0);
	g_pos.iq7sum_of_sec = _IQ7(0);

	g_pos.iq17sum += g_sen[g_u16pos_cnt + 0].iq17_127_value;
	g_pos.iq17sum += g_sen[g_u16pos_cnt + 1].iq17_127_value;
	g_pos.iq17sum += g_sen[g_u16pos_cnt + 2].iq17_127_value;
	g_pos.iq17sum += g_sen[g_u16pos_cnt + 3].iq17_127_value;
		
	g_pos.iq7sum = g_pos.iq17sum >> 10;
	
	if( g_pos.iq17sum )
	{	
		cross_check();
		
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 0 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 0 ].iq17_127_value, 17 );
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 1 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 1 ].iq17_127_value, 17 );
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 2 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 2 ].iq17_127_value, 17 );
		g_pos.iq7sum_of_sec += _IQ7mpyIQX( g_sen[ g_u16pos_cnt + 3 ].iq7weight, 7, g_sen[ g_u16pos_cnt + 3 ].iq17_127_value, 17 );

		g_pos.iq7temp_pos = _IQ7div( g_pos.iq7sum_of_sec, g_pos.iq7sum );

		if( g_pos.iq7temp_pos >= POS_END )	//상한선 
			g_pos.iq7temp_pos = POS_END;

		else if( g_pos.iq7temp_pos <= -POS_END ) //하한선 	
			g_pos.iq7temp_pos = -POS_END;
		
		else;
		
		g_pos.iq10temp_position = g_pos.iq7temp_pos<<3;
		
		position_enable(&g_pos);		
		
	}
	
}

static void position_enable(position_t *ppos)
{

	if( g_pos.iq7temp_pos < g_sen[ 0 ].iq7weight ) //라인이 LEFT
	{
		g_u16pos_cnt = 0;
        g_shift.u16sen_enable =	LEFT_ENABLE;
        g_shift.u16sen_state = 8;
	}
    else if( g_pos.iq7temp_pos > g_sen[ 15 ].iq7weight ) // 라인이 RIGHT
	{
		g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 8;
	}

    if( g_pos.iq7temp_pos < g_sen[ 1 ].iq7weight )
	{
		g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 7;
	}
	else if( g_pos.iq7temp_pos > g_sen[ 14 ].iq7weight )
	{
		g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 7;
	}

    if( g_pos.iq7temp_pos < g_sen[ 2 ].iq7weight )
	{
		g_u16pos_cnt = 0;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 6;
        
	}
	else if( g_pos.iq7temp_pos > g_sen[ 13 ].iq7weight )
	{
		g_u16pos_cnt = 12;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 6;
	}
	else if( g_pos.iq7temp_pos < g_sen[ 3 ].iq7weight )
	{
		g_u16pos_cnt = 1;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 5;
	}
	else if( g_pos.iq7temp_pos > g_sen[ 12 ].iq7weight )
	{
		g_u16pos_cnt = 11;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 5;
	}
	else if( g_pos.iq7temp_pos < g_sen[ 4 ].iq7weight )
	{
		g_u16pos_cnt = 2;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 4;
	}
	else if( g_pos.iq7temp_pos > g_sen[ 11 ].iq7weight )
	{
		g_u16pos_cnt = 10;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 4;
	}
    else if( g_pos.iq7temp_pos < g_sen[ 5 ].iq7weight )
	{
		g_u16pos_cnt = 3;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 3;
	}
    else if( g_pos.iq7temp_pos > g_sen[ 10 ].iq7weight )
	{
		g_u16pos_cnt = 9;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 3;
	}
    else if( g_pos.iq7temp_pos < g_sen[ 6 ].iq7weight )
	{
		g_u16pos_cnt = 4;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 2;
	}
    else if( g_pos.iq7temp_pos > g_sen[ 9 ].iq7weight )
	{
		g_u16pos_cnt = 8;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 2;
	}
    else if( g_pos.iq7temp_pos <= g_sen[ 7 ].iq7weight )
	{
		g_u16pos_cnt = 5;
        g_shift.u16sen_enable = LEFT_ENABLE;
        g_shift.u16sen_state = 1;
	}
    else if( g_pos.iq7temp_pos >= g_sen[ 8 ].iq7weight )
	{
		g_u16pos_cnt = 7;
        g_shift.u16sen_enable = RIGHT_ENABLE;
        g_shift.u16sen_state = 1;
	}
    
	else if( g_pos.iq7temp_pos < g_sen[8].iq7weight && g_pos.iq7temp_pos > g_sen[7].iq7weight)
	{
		g_u16pos_cnt = 6;
        g_shift.u16sen_enable = 0;
        g_shift.u16sen_state = 0;
	}
    else;

	
}

void Handle( void )
{
	if( g_pos.iq10temp_position > _IQ10( 0.0 ) )		//  라인이 ringt
	{
		LMotor.iqHandle = _IQ( 1.0 ) - _IQmpy( g_pos.iq10temp_position<<7, g_q17_handle_acc);	
		RMotor.iqHandle = _IQ( 1.0 ) + _IQmpy( g_pos.iq10temp_position<<7, g_q17_handle_dec);	

		if( RMotor.iqHandle <= _IQ( 0.0 ))
			LMotor.iqHandle = _IQ( 0.0 );
	}
	
	
	else if( g_pos.iq10temp_position < _IQ10( 0.0 ) )		// 라인이left
	{
		LMotor.iqHandle = _IQ( 1.0 ) - _IQmpy( g_pos.iq10temp_position<<7, g_q17_handle_dec);   
		RMotor.iqHandle = _IQ( 1.0 ) + _IQmpy( g_pos.iq10temp_position<<7, g_q17_handle_acc);   

		if( LMotor.iqHandle <= _IQ( 0.0 ) )
			RMotor.iqHandle = _IQ( 0.0 );
	}

	else
	{
		RMotor.iqHandle = _IQ( 1.0 );
		LMotor.iqHandle = _IQ( 1.0 );
	}
}

void turn_decide( turnmark_t *pmark , turnmark_t *premark )
{

	turnmark_t *p_mark = pmark;
	turnmark_t *p_remark = premark;
    
	if(p_mark->u16single_flag == ON)
	{
        
				//(2) 이 부분의 소스는 60mm 이동하면서 반대편 마크가 들어온다면 스타트 엔드 혹은 크로스중에 하나라는 것을 이용한다 
		if( p_mark->iq17turnmark_dist > p_mark->iq17limit_dist ) //(2) 5mm 지나고 60mm 더해줫던거 통과 햇는지 확인 
		{
            
			if( p_mark == &g_lmark)
			{
				L_LED_OFF;
				BLUE_OFF;
				//VFDPrintf("        ");
				
				if( p_remark->u16single_flag == ON )
				return;
				
			}
			else if( p_mark == &g_rmark )
			{
				
				R_LED_OFF;
				BLUE_OFF;
				//VFDPrintf(" 	   ");

			}
			else;
			
			p_mark->u16single_flag = OFF;
			p_mark->u16turn_flag = OFF;
			p_mark->iq17turnmark_dist = _IQ( 0.0 );	//마크 변수 초기화

			if( p_mark->u16cross_flag )  //반대편 마크가 값이 들어왔을 경우
			{
				p_mark->u16cross_flag = OFF;
 
				if( p_mark == &g_rmark )
				{			
					//cross
					if( g_Flag.cross_flag)	return;
                    
					//start end
					start_end_check();
				}
				
			}
			else //순수 턴마크
			{
				if( (!g_Flag.move_state) || g_Flag.cross_flag)
					return;


				if(g_Flag.first_race)
                {
                    line_info(p_mark);
				}
                else if(g_Flag.second_race)
					second_info(search_info);
			}
		}
		else if( p_remark->u16single_flag )
			p_mark->u16cross_flag = ON;		//60mm가다가 보니간 반대편이 켜져잇네 ?? 그럼 턴마크 크로스 플래스 ON
		else;

		return;
	}

	mark_enable_shift( &g_lmark, &g_rmark );
	
	if( p_mark->u16mark_enable & g_pos.u16state )// 센서값이 들어왓다 
	{
		//(1)실제 처음 턴마크를 인식 햇을 대
		if(p_mark->u16turn_flag == OFF)
		{
            
			RMotor.iq17Turnmark_Check_Dist = _IQ(0.0);
			LMotor.iq17Turnmark_Check_Dist = _IQ(0.0);
			p_mark->iq17turnmark_dist = _IQ(0.0);

			p_mark->iq17limit_dist = p_mark->iq17turnmark_dist + _IQ(3.0);	//5mm 동안 반대편 턴마크 확인하기 및 티글 필터링 용도
			p_mark->u16turn_flag = ON;
		}
		else if( p_mark->iq17turnmark_dist > p_mark->iq17limit_dist )	//5mm를 넘어서는 순간 60mm 추가로 더해줌 
		{	
			p_mark->u16single_flag = ON;
			p_mark->iq17limit_dist = p_mark->iq17turnmark_dist + ( (int32)g_u16turn_dist << 17 );	//메뉴에서 골라주는 60mm 혹은 70mm 

			if(g_Flag.cross_flag == OFF)
			{
				if(p_mark == &g_lmark) 
				{
					L_LED_ON;

				}
                else if(p_mark == &g_rmark) 	
				{
					R_LED_ON;

				}
			}
		}
	}
	else
	{
		p_mark->iq17turnmark_dist = _IQ( 0.0 );
		p_mark->u16turn_flag = OFF;
	}
	
}


