//###########################################################################
//
// FILE		: Motor.h
//
// TITLE	: Motor h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze
//
//###########################################################################
// $Release Date: 2011.11.14 $
//###########################################################################

#ifndef __MOTOR__
#define __MOTOR__

void F_VELOCITY();

void F_ACCELERATION();

void F_HANDLE_ACC();

void F_HANDLE_DEC();

void HANDLE_SELECT();

void F_ENDACCEL();




/*
#define STEP_D _IQ(0.411941251)
#define STEP_2D _IQ(0.823882502)
*/

#define STEP_D _IQ(0.823882502)
#define STEP_2D _IQ(1.647765004)
#define q15STEP_D _IQ15(0.823882502)


extern void	Motor_CalBaseMotionValue( MOTORCTRL *pM );
extern void Init_MotorCtrlVar( MOTORCTRL *pM );
void F_TURNDIST();

void R_Motor_ON( MOTORCTRL*pM );
void L_Motor_ON( MOTORCTRL*pM );
void decel_calculation();
extern void move_to_move( volatile _iq17 dist, volatile _iq17 dec_dist, volatile _iq17 tar_vel, volatile _iq17 dec_vel, volatile int32 acc );
extern void move_to_end( volatile _iq17 dist, volatile _iq17 vel, volatile int32 acc );


#endif
