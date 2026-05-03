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


#ifndef __FASTRUN_H__
#define __FASTRUN_H__

typedef enum		//조절 필요
{
	TURN_45_DIST = 240,
	TURN_90_DIST = 450,
	TURN_180_DIST = 720,
	TURN_270_DIST = 1100
}turn_dist_enum;

typedef enum
{
	D_STR,
	D_45 = 300,		//50
	D_90 = 550,		//115
	D_180 = 750,	//135
	D_270 = 800		//160

}straight_delay_enum;

typedef enum
{
	LONG_DIST = 2000,
	MID_DIST = 1000,
	SHORT_DIST = 400,
	VERY_SHORT_DIST = 200
	
}straight_dist_enum;

static void straight_compute( race_info *pinfo, int32 mark);
void max_vel_compute( volatile _iq7 dist, volatile _iq7 minus_dist, volatile _iq7 cur_vel, volatile int32 acc, volatile _iq7 *max_vel );
void decel_dist_compute( volatile _iq7 cur_vel, volatile _iq7 tar_vel, volatile int32 acc, volatile _iq7 *decel_dist );
static void turn_division_func( void );
static void turn_division_compute( race_info *pinfo, int32 mark);
extern void turn_info_func();
extern void turn_info_compute( race_info *pinfo, int32 mark_cnt );
extern void speed_up_compute(race_info * p_info);


extern void second_race();
extern void fast_race(race_info *pinfo);
extern void second_info(race_info *p_info);
static void default_turn_compute( race_info *pinfo, int32 mark);
static void speed_up_func( void );
static void large_turn_compute( race_info *pinfo, int32 mark);





#endif
