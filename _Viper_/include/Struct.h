//###########################################################################
//
// filename		:Struct.h
//
// TwinCopter structure header file.
//
// by Choi gi baek (MAZE 16TH)
//
//###########################################################################
// $Release Date: 2012.01.18 $
//###########################################################################

#ifndef __STRUCT_H__
#define __STRUCT_H__

#ifdef __STRUCT__

#undef __STRUCT__
#define __STRUCT_EXT__

#else

#define __STRUCT_EXT__	extern

#endif


typedef struct first_race_info
{
	int32 int32dist;
	int32 int32turn_way;
	int32 int32L_dist;
	int32 int32R_dist;
	int32 int32cross_check_dist;
	int32 int32turn_dir;
	int32 int32turn_cnt;
    int32 int32accel;
	
	_iq7  iq7in_vel;
	_iq7  iq7vel;
	_iq7  iq7out_vel;
	_iq7  iq7dec_dist;
	_iq7  iq7m_dist;
} race_info;

__STRUCT_EXT__ race_info search_info[256];


typedef	volatile struct sensor_variable// 센서 변수 구조체 
{
	
	_iq17		iq17_4095_value,
				iq17_4095_min_value,
				iq17_4095_max_value,
				iq17_127_value,
				iq17_ON_OFF_value;
	
	Uint16		u16active_arr;
	Uint16		u16passive_arr;

	_iq7		iq7weight;
	
}sen_t;

__STRUCT_EXT__  sen_t		g_sen[16]; 

typedef struct shift_str
{
	Uint16 u16sen_enable;
	Uint16 u16sen_state;
}sen_enable_str;
__STRUCT_EXT__ sen_enable_str g_shift;


typedef volatile struct position
{ 
	_iq			iq17sum;
	_iq7		iq7sum;
	_iq7		iq7sum_of_sec;
	_iq7		iq7temp_pos;
	
	Uint16		u16enable;
	Uint16		u16state;

	_iq10       iq10temp_position;
	
}position_t;

__STRUCT_EXT__	position_t		g_pos;

typedef volatile struct
{
	_iq17	iq17turnmark_dist;
	_iq17	iq17check_dist;
	_iq17	iq17limit_dist;
	_iq17	iq17Turnmark_Check_Dist;
	
	Uint16 u16State;
	Uint16 u16mark_enable;
	Uint16 u16turn_flag;
	Uint16 u16single_flag;	
	Uint16 u16cross_flag;
	
}turnmark_t;

typedef volatile struct str_point
{
	turnmark_t	*g_lmark;
	turnmark_t	*g_rmark;	
}str_point_t;


__STRUCT_EXT__	str_point_t g_ptemp;
__STRUCT_EXT__	str_point_t *g_ptr;


typedef struct
{
	_iq17	iqTargetA;		///< 목표 가속도
	
	_iq17	iqDist;			///< 이동 거리
//	_iq17	iq_cross_dist;
	_iq17	iqVelo;			///< 속도
	_iq17	iqTargetV;		///< 목표 속도
	_iq17	iqNextV;		///< 다음 속도(다음번 시간의 속도)
	_iq17	iqAmpyS;
	_iq17	iqHandle;
	_iq17	iqTotalDis;		///< 이동거리 누적
	_iq24	iq24TargetA_1;
	_iq24	iq24TimeValue;
	Uint32	u32_Period_Cnt;
	Uint32	u32_Period;
	Uint16	u16_pPeriod;

    
    _iq17	iq17Turnmark_Check_Dist;	//턴마크 체크 이동거리 
	_iq15	iq15GoneDist;			///< 이동 거리	
	_iq15	iq15Cross_Check_Dist;		//크로스 체크 이동거리
	_iq17	iq17Start_Check_Dist;
	_iq17	iq17distance_sum;
	_iq17	iq17decel_distance;
	_iq17	iq17err_distance;
	_iq17	iq17user_distance;
    _iq17	iq17decel_vel;

    Uint16 	u16decel_flag;
}MOTORCTRL;
__STRUCT_EXT__ MOTORCTRL g_motor;

typedef volatile struct bit_field_flag
{
	Uint16 motor:1;
	Uint16 move_state:1;
	Uint16 start_flag:1;
	Uint16 cross_flag:1;
	Uint16 lineout_flag:1;
	Uint16 end_flag:1;
	Uint16 stop_check:1;
	Uint16 Rturnmark_flag:1;
	Uint16 Lturnmark_flag:1;
	Uint16 speed_up:1;
	Uint16 speed_up_start:1;
	Uint16 straight_run:1;
	Uint16 first_race:1;
	Uint16 second_race:1;
	Uint16 race_start:1;
	
}bit_field_flag_t;

__STRUCT_EXT__ bit_field_flag_t	g_Flag;


__STRUCT_EXT__ turnmark_t g_rmark;
__STRUCT_EXT__ turnmark_t g_lmark;


#endif

