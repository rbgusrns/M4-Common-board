//###########################################################################
//
// FILE		: fastrun.c
//
// TITLE		: _666_ Tracer fastrun source file.
//
// Author	: Yuk Keun Ho
//
// Company	: Hertz
//
//###########################################################################
// $Release Date: 2009.11.21 $
//###########################################################################


#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File


void second_race()
{
	StartCpuTimer0();
	VFDPrintf("_ _GO_ _");
    fast_race(search_info);
}

void fast_race(race_info *pinfo)
{
	//int i;
    DELAY_US(100000);
	read_line_info_rom();
	
	turn_info_func(); // 라인 정보 분석 
	turn_division_func(); //직선 및 턴에 고유값 부여 

	Race_Init();//출발에 필요 한 초기화
	VFDPrintf("        ");
	
	g_Flag.second_race = ON;
	
	pinfo->int32accel = g_u32_ACC_targetval;
	
    move_to_move( _IQ( pinfo->int32dist ), pinfo->iq7dec_dist << 10, pinfo->iq7vel << 10, pinfo->iq7out_vel << 10, pinfo->int32accel);
	
	g_Flag.motor = ON;	//sensor.c에 잇는 인터럽트 (모터 구동 소스) 활성화
	g_Flag.move_state = ON;
	BLUE_ON;
	

	while(1)
	{	
		make_position();
		Handle();

		if( g_Flag.move_state )
	    {
			g_lmark.iq17turnmark_dist = g_rmark.iq17turnmark_dist = _IQmpy( (RMotor.iq17Turnmark_Check_Dist + LMotor.iq17Turnmark_Check_Dist), _IQ( 0.5 ));
			g_q15cross_dist = _IQ15mpy( ( RMotor.iq15Cross_Check_Dist + LMotor.iq15Cross_Check_Dist ), _IQ15(0.5));
			
			turn_decide(&g_lmark, &g_rmark);
			turn_decide(&g_rmark, &g_lmark);

			if (pinfo->int32turn_way == STRAIGHT) BLUE_ON;
	    }

		
		if( g_int32_isr_cnt )
		{
			if( line_out_func() || race_stop_check() )	return;

			speed_up_compute(pinfo);
			
			g_int32_isr_cnt = 0;
		}
		
	}
}

static void turn_division_func( void )
{
	int32 i = 0;

	for( i = 0 ; i <= g_int32total_cnt ; i ++ )   
	{
		turn_division_compute( &search_info[ i ], i );
	}
}    


void second_info(race_info *p_info)
{
	race_info *pinfo = p_info;

	U16_turnmark_cnt++;

	if( ( pinfo + U16_turnmark_cnt )->int32turn_dir & ( STRAIGHT | END_TURN ) )		g_Flag.speed_up_start = ON;
	
	else																			g_Flag.straight_run = OFF;
	
	move_to_move( _IQ( ( pinfo + U16_turnmark_cnt )->int32dist ), ( ( pinfo + U16_turnmark_cnt )->iq7dec_dist << 10 ), ( ( pinfo + U16_turnmark_cnt)->iq7vel << 10 ), ( ( pinfo + U16_turnmark_cnt)->iq7out_vel << 10 ), ( pinfo + U16_turnmark_cnt )->int32accel );

	speed_up_func();
	
	LMotor.iq15GoneDist = RMotor.iq15GoneDist = _IQ15( 0 );
	LMotor.iq17distance_sum = RMotor.iq17distance_sum = _IQ( 0 );
}

static void turn_division_compute( race_info *pinfo, int32 mark)
{
	if( ( pinfo->int32turn_dir & STRAIGHT ) || pinfo->int32turn_dir & END_TURN )	straight_compute( pinfo , mark ); //직진 혹은 막턴일경우 
	//else if( pinfo->int32turn_dir & LARGE_TURN )									large_turn_compute( pinfo, mark);
	else																			default_turn_compute( pinfo , mark ); 
}

static void large_turn_compute( race_info *pinfo, int32 mark)
{
	volatile _iq7 big_vel = _IQ7( 0 );
	volatile _iq7 small_vel = _IQ7( 0 );

	pinfo->iq7in_vel = (mark > 0) ? ( pinfo - 1 )->iq7out_vel : _IQ7( 0 ); 

	turn_division_compute( ( pinfo + 1 ), ( mark + 1 ));
	pinfo->iq7out_vel = ( pinfo + 1 )->iq7in_vel;
/*
	if( pinfo->iq7out_vel == _IQ7( 0 ) )	pinfo->iq7out_vel = (g_u32_VEL_targetval<<7);
	if( pinfo->iq7in_vel > g_q7large_vel )	pinfo->iq7in_vel = g_q7large_vel;
	if( pinfo->iq7out_vel > g_q7large_vel )	pinfo->iq7out_vel = g_q7large_vel;
*/
	pinfo->int32accel = g_int32large_ACC;

	big_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7in_vel : pinfo->iq7out_vel;
	small_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7out_vel : pinfo->iq7in_vel;

	decel_dist_compute( pinfo->iq7in_vel, pinfo->iq7out_vel, pinfo->int32accel, &pinfo->iq7m_dist );

	if( pinfo->iq7m_dist >= _IQ7( pinfo->int32dist ) )// 마이너스할 구간이 실제 거리보다 클 경우 -> 재계산 필요..
	{
		pinfo->iq7dec_dist = _IQ7( pinfo->int32dist );
		max_vel_compute( _IQ7( pinfo->int32dist ), _IQ7( 0 ), small_vel, pinfo->int32accel, &pinfo->iq7vel );

		if( pinfo->iq7in_vel > pinfo->iq7out_vel )	pinfo->iq7in_vel = pinfo->iq7vel;
		else										pinfo->iq7out_vel = pinfo->iq7vel;

		if( !mark )		//시작 직진
			pinfo->iq7in_vel = _IQ7( 0 );
	}

	else
	{
		max_vel_compute( _IQ7( pinfo->int32dist ), pinfo->iq7m_dist, big_vel, pinfo->int32accel, &pinfo->iq7vel );
		decel_dist_compute( pinfo->iq7vel, pinfo->iq7out_vel, pinfo->int32accel, &pinfo->iq7dec_dist );

	}
	
}


static void straight_compute( race_info *pinfo, int32 mark)
{
	
	volatile _iq7 big_vel = _IQ7( 0 );
	volatile _iq7 small_vel = _IQ7( 0 );

	//진입 속도, 탈출 속도 compute
	pinfo->iq7in_vel = (mark > 0) ? ( pinfo - 1 )->iq7out_vel : _IQ7( 0 ); 
	//이전 탈출속도= 이번 진입속도
	if( !( pinfo->int32turn_dir & END_TURN ) )	//마지막 구간이  아닐 경우
	{
		turn_division_compute( ( pinfo + 1 ), ( mark + 1 ));	//out vel 결정
		pinfo->iq7out_vel = ( pinfo + 1 )->iq7in_vel; //이번 탈출속도 =다음 진입속도 

		//pinfo->iq7out_vel = ( g_int32turn_vel << 7 );			//턴속 부여 
	}
	else	//마지막구간 
	{
		pinfo->iq7out_vel = _IQ7( g_u32_END_VEL_targetval );
		(pinfo + 1)->iq7in_vel = pinfo->iq7out_vel = _IQ7( g_u32_END_VEL_targetval );
	}
	
	//직진 가속도 설정
    if( pinfo->int32dist > LONG_DIST )
    {
            pinfo->int32accel = g_int32long_ACC;
    
            if( pinfo->int32turn_dir & END_TURN )
                pinfo->int32accel = ( pinfo->int32accel > 3000 )? 3000 : g_int32long_ACC;
    }
    
    else if( pinfo->int32dist > MID_DIST )  pinfo->int32accel = g_int32mid_ACC;
	
    else	pinfo->int32accel = g_int32short_ACC;

 
/*
	if( pinfo->int32turn_dir & END_TURN )
		pinfo->int32accel = 3000;//pinfo->int32accel > 5000 ? 5000 : g_u32_sec_acc;
	

	// 우선 가속도는 상수로  
	pinfo->int32accel = 3000;
*/
	if( !mark && pinfo->int32accel > 5500 )
		pinfo->int32accel = 5000;	//스타트 가속도 
	else if( pinfo->int32turn_dir & END_TURN )
		pinfo->int32accel = 3000;   //엔드 가속도 

	big_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7in_vel : pinfo->iq7out_vel;
	small_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7out_vel : pinfo->iq7in_vel;

	decel_dist_compute( pinfo->iq7in_vel, pinfo->iq7out_vel, pinfo->int32accel, &pinfo->iq7m_dist );

	if( pinfo->iq7m_dist >= _IQ7( pinfo->int32dist ) )// 마이너스할 구간이 실제 거리보다 클 경우 -> 재계산 필요..
	{
		pinfo->iq7dec_dist = _IQ7( pinfo->int32dist );
		max_vel_compute( _IQ7( pinfo->int32dist ), _IQ7( 0 ), small_vel, pinfo->int32accel, &pinfo->iq7vel );

		if( pinfo->iq7in_vel > pinfo->iq7out_vel )	pinfo->iq7in_vel = pinfo->iq7vel;
		else										pinfo->iq7out_vel = pinfo->iq7vel;

		if( !mark )		//시작 직진
			pinfo->iq7in_vel = _IQ7( 0 );
	}
	else//반감속
	{
		max_vel_compute( _IQ7( pinfo->int32dist ), pinfo->iq7m_dist, big_vel, pinfo->int32accel, &pinfo->iq7vel );
		decel_dist_compute( pinfo->iq7vel, pinfo->iq7out_vel, pinfo->int32accel, &pinfo->iq7dec_dist );
	}

	//TxPrintf("iq7vel:%lf\n",_IQ7toF(pinfo->iq7vel));
	
}

static void default_turn_compute( race_info *pinfo, int32 mark)
{
	pinfo->int32accel = 3000;
	pinfo->iq7in_vel = _IQ7( g_u32_VEL_targetval );
	pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;

#if 1
	pinfo->int32accel = 3000;
	if(pinfo->int32turn_dir & TURN_45)
	{
		pinfo->iq7in_vel = _IQ7(g_u32_VEL_targetval > g_int32turn_45_VEL ? g_int32turn_45_VEL : g_u32_VEL_targetval);
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else if(pinfo->int32turn_dir & TURN_90)
	{
		pinfo->iq7in_vel = _IQ7(g_u32_VEL_targetval > g_int32turn_90_VEL ? g_int32turn_90_VEL : g_u32_VEL_targetval);
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else if(pinfo->int32turn_dir & TURN_180)
	{
		pinfo->iq7in_vel = _IQ7(g_u32_VEL_targetval > g_int32turn_180_VEL ? g_int32turn_180_VEL : g_u32_VEL_targetval);
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else if(pinfo->int32turn_dir & TURN_270)
	{
		pinfo->iq7in_vel = _IQ7(g_u32_VEL_targetval > g_int32turn_270_VEL ? g_int32turn_270_VEL : g_u32_VEL_targetval);
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else if(pinfo->int32turn_dir & LARGE_TURN)
	{
		//pinfo->iq7in_vel = _IQ7(g_u32_VEL_targetval > g_int32turn_LARGE_VEL ? g_int32turn_LARGE_VEL : g_u32_VEL_targetval);
		pinfo->iq7in_vel = _IQ7(g_int32turn_LARGE_VEL); //강제입력 
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else	
	{
		pinfo->iq7in_vel = _IQ7( g_u32_VEL_targetval );
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
#endif //곡률별 속도 부여 

#if 1
	if((pinfo->int32turn_dir >= TURN_180) && ((pinfo+1)->int32turn_dir >= TURN_180))	//180 연속 처리 (첫 부분)
	{
		pinfo->int32accel = 3000;
		if(pinfo->iq7in_vel >= _IQ7( 2200 ))
			pinfo->iq7in_vel = _IQ7( 2200 );
 
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else if(((pinfo-1)->int32turn_dir >= TURN_180) && (pinfo->int32turn_dir >= TURN_180))	//180 연속 처리 (이후 부분)
	{
		pinfo->int32accel = 3000;
		if(pinfo->iq7in_vel >= _IQ7( 2200 ))
			pinfo->iq7in_vel = _IQ7( 2200 );
 
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	
	if(((pinfo-1)->int32turn_dir & STRAIGHT) && (pinfo->int32turn_dir >= TURN_90) && ((pinfo+1)->int32turn_dir & STRAIGHT)) // 직 90 직 처리 
	{
		pinfo->int32accel = 3000;
		if(pinfo->iq7in_vel >= _IQ7( 2200 ))
			pinfo->iq7in_vel = _IQ7( 2200 );
		pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
	}
	else;
#endif

}





void max_vel_compute( volatile _iq7 dist, volatile _iq7 minus_dist, volatile _iq7 cur_vel, volatile int32 acc, volatile _iq7 *max_vel )
{
	_iq7 iq7acc = _IQ7( 0.0 );

	dist -= minus_dist;

	dist = _IQ7div( dist, _IQ7( 2000.0 ) ); // s/2
	cur_vel = _IQ7div( cur_vel, _IQ7( 1000.0 ) ); //v0

	iq7acc = _IQ7div( _IQ7( acc ) ,  _IQ7( 1000.0 ) ); //a

	*max_vel = _IQ7mpy( _IQ7sqrt( _IQ7mpy( cur_vel , cur_vel ) + _IQ7mpy( iq7acc << 1 , dist ) ), _IQ7( 1000.0 ) ); //v` = root(v^2+2as)

	if( *max_vel > _IQ7( 4500.0 ) )                     *max_vel = _IQ7( 4500.0 );
	else if( *max_vel < _IQ7( g_u32_VEL_targetval ) )         *max_vel = _IQ7( g_u32_VEL_targetval );
	else;
}
void decel_dist_compute( volatile _iq7 cur_vel, volatile _iq7 tar_vel, volatile int32 acc, volatile _iq7 *decel_dist )
{
	_iq7 iq7acc = _IQ7( 0.0 );

	cur_vel = _IQ7div( cur_vel, _IQ7( 1000.0 ) );
	tar_vel = _IQ7div( tar_vel, _IQ7( 1000.0 ) );

	//iq7acc = _IQ7( acc );
	iq7acc = _IQ7div( _IQ7( acc ), _IQ7( 1000.0 ) );
	*decel_dist = _IQ7mpy( _IQ7div( _IQ7abs( _IQ7mpy( cur_vel , cur_vel ) - _IQ7mpy( tar_vel , tar_vel ) ), ( iq7acc << 1 ) ), _IQ7( 1000.0 ) ); // s = // |v`^2 - v^2|/2a
}

 
void turn_info_func()
{
	int32 i = 0;

	for( i = 0; i <= g_int32total_cnt; i++ ) 
	{
		turn_info_compute( &search_info[ i ], i);
	}

} 

void turn_info_compute( race_info *pinfo, int32 mark_cnt )
{
	int32 max,min=0;
	
	int32 temp = 0;
	
	if( !mark_cnt )	pinfo->int32turn_way = STRAIGHT;	//출발
	
	if( ( pinfo->int32turn_way & STRAIGHT ) && !( pinfo->int32turn_way & END_TURN ) )	//직진인데 마지막 구간 제외
	{
		pinfo->int32turn_dir = STRAIGHT; // 0x0001

		pinfo->int32turn_cnt = D_STR; // 1  

		if( mark_cnt )  	
		{
			if( pinfo->int32dist > SHORT_DIST ) //400
			{/*
				if(pinfo->int32cross_check_dist == 0) //cross 없음..
				{

					( pinfo - 1 )->int32turn_cnt = ( int32 )(( float32 )(pinfo->int32cross_check_dist)) / (( float32 )( g_u32_VEL_targetval)*( float32 )( 0.000025 ));
					temp = pinfo->int32dist - ( int32 )(( _IQmpy( g_q17user_vel, _IQ17(( pinfo - 1 )->int32turn_cnt ))) >> 17);
				}
				else
					*/
					temp = pinfo->int32dist - ( int32 )(( _IQmpy( g_q17user_vel, _IQ17(( pinfo - 1 )->int32turn_cnt ))) >> 17);
				
				if( temp <= 0 )
				{
					temp = pinfo->int32dist;
					( pinfo - 1 )->int32turn_cnt = D_STR;	//??????????
				}				
			}
			else // 400 이상,, 
			{
				temp = pinfo->int32dist;
				( pinfo - 1 )->int32turn_cnt = D_STR;		//??????????
			}
	
			pinfo->int32dist = temp;
		}
	}
	
	else if( !( pinfo->int32turn_way & STRAIGHT ) && !( pinfo->int32turn_way & END_TURN ) ) 	//턴  !( pinfo->int32turn_way & STRAIGHT ) && !( pinfo->int32turn_way & END_TURN )
	{ // 턴처리but 마지막턴 제외
		if( pinfo->int32dist <= TURN_45_DIST )	//45
		{
			pinfo->int32turn_dir = TURN_45 | pinfo->int32turn_way; //L:0x0010 R:0x0110
			pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_45 : D_STR; // 다음주행이 직진일경우 D_45, 아닐경우 D_STR
		}
		else if( pinfo->int32dist <= TURN_90_DIST ) //90
		{
			pinfo->int32turn_dir = TURN_90 | pinfo->int32turn_way;
			pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_90 : D_STR;

		}
		else if( pinfo->int32dist <= TURN_180_DIST )	//180
		{
			pinfo->int32turn_dir = TURN_180 | pinfo->int32turn_way;
			pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_180 : D_STR;

		}
		else if( pinfo->int32dist > TURN_270_DIST )
		{
			max = ( pinfo->int32L_dist > pinfo->int32R_dist )? pinfo->int32L_dist : pinfo->int32R_dist;
			min = ( pinfo->int32L_dist > pinfo->int32R_dist )? pinfo->int32R_dist : pinfo->int32L_dist;
					
			if( ( max / min ) < 2 )		//큰 턴
			{
				pinfo->int32turn_dir = LARGE_TURN | pinfo->int32turn_way;
				pinfo->int32turn_cnt = D_STR;

				if( mark_cnt )
				{
					if( pinfo->int32dist > SHORT_DIST )
					{
						temp = pinfo->int32dist - ( int32 )(( _IQmpy( g_q17user_vel, _IQ17(( pinfo - 1 )->int32turn_cnt ))) >> 17);
						if( temp <= 0 )
						{
							temp = pinfo->int32dist;
							( pinfo - 1 )->int32turn_cnt = D_STR;	
						}
					}
					else
					{
						temp = pinfo->int32dist;
						( pinfo - 1 )->int32turn_cnt = D_STR;		
					}
					pinfo->int32dist = temp;
				}
			}
			else		//아닌 경우는 270도 처리
			{
				pinfo->int32turn_dir = TURN_270 | pinfo->int32turn_way;
			
				pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_270 : D_STR; 
			}
		}


		else	//에러 처리 ( 270로 본다 )
		{
			pinfo->int32turn_dir = TURN_270 | pinfo->int32turn_way;
			pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_STR : D_STR;
		}
	}
	else
	{	
		pinfo->int32turn_dir = pinfo->int32turn_way;
	}

}



void speed_up_compute( race_info *p_info )
{
	race_info *pinfo = p_info;

	if( !g_Flag.speed_up_start )	return; //g_flag.speed_up_start==OFF
	g_int32speed_up_cnt ++;
	if( g_int32speed_up_cnt > ( pinfo + U16_turnmark_cnt - 1 )->int32turn_cnt  || !( U16_turnmark_cnt ) )
	{ 
		BLUE_ON;
		g_Flag.speed_up = ON;
		g_Flag.speed_up_start = OFF;
		g_int32speed_up_cnt = 0;
	}
}


static void speed_up_func( void )
{
	if(  g_Flag.stop_check || !g_Flag.motor )
		return;				//라인 아웃 정지 일 경우 리턴 , 1차 일 경우 리천
	
	if( g_Flag.speed_up )
	{
		g_Flag.straight_run = ON;
		RMotor.iqTargetV = LMotor.iqTargetV = search_info[ U16_turnmark_cnt].iq7vel << 10;
	}
}




