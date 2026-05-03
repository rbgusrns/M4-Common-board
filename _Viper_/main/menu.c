//###########################################################################
//
// FILE		: Menu.c
//
// TITLE	: Menu c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Menu.h"

void (*SELECT[3][5])()={
/*
{__run___,_1st_run,_2rd_run,TURNDIST,ENDACCEL},
{_motor__,VELOCITY,ACCELERATION,HANDLE_ACC,HANDLE_DEC},
{_sensor_,max__min,POSCHECK,SEN_127_,__4095__},
{Line_info,TURNMARK,TURNDIST,_NULL}
*/


{_motor__,VELOCITY,ACCELERATION,HANDLE_ACC,HANDLE_DEC},

{_sensor_,max__min,  __4095__  ,SEN_127_,POSCHECK},
	
{__run___,_1st_run,_2nd_run,  TURNDIST ,  TURNMARK}





};

void _2nd_run()
{
	VFDPrintf("2nd_RACE");

	if (SW_U==0) second_race();
}

void _sensor_()
{
	VFDPrintf("_SENSOR_");
}


void _motor__()
{
	VFDPrintf("SETMOTOR");
}


void __run___()
{  
	VFDPrintf("__RACE__");
}


void _NULL()
{
	
	VFDPrintf("NOTTING_");
	DELAY_US(50000);
	a--;
	
}

void TURNDIST()
{
	VFDPrintf("TURNDIST");

	if (SW_U==0) F_TURNDIST();
}

void ENDACCEL()
{
	VFDPrintf("END_ACC_");

	if (SW_U==0) F_ENDACCEL();
}


void HANDLE_DEC()
{
	VFDPrintf("HAND_DEC");

	if (SW_U==0) F_HANDLE_DEC();
}


void HANDLE_ACC()
{
	VFDPrintf("HAND_ACC");

	if (SW_U==0) 

	{
		F_HANDLE_ACC();
	}
}

void ACCELERATION()
{
	VFDPrintf("SET_ACC_");

	if (SW_U==0) F_ACCELERATION();
}

void VELOCITY()
{
	VFDPrintf("SET_VELO");

	if (SW_U==0) F_VELOCITY();
}


void _1st_run()
{
	VFDPrintf("1st_RACE");

	if (SW_U==0) F_1st_run();

}


void SEN_127_()
{
	VFDPrintf("SEN_127_");

	if (SW_U==0)     F_127();

	
}


void max__min()
{
	VFDPrintf("MAX_MIN_");
	
	if (SW_U==0)     F_Max_min();
}


void __4095__()
{
	VFDPrintf("SEN_4095");

	if (SW_U==0)     F_4095();
}


void POSCHECK()
{
	VFDPrintf("POSCHECK");
	
	if (SW_U==0)	   F_POSCHECK();

	
}

void TURNMARK()
{
	VFDPrintf("TURNMARK");

	if (SW_U==0)	   F_TURNMARK();
}



void menu() //a = 가로 b = 세로 
{	
	L_LED_OFF;
	R_LED_OFF;
	DELAY_US(135000);
			
	if (SW_D==0) 	
	{
		L_LED_ON;
		R_LED_ON;	
		b++;  //down
		a=0;
		
	}
	else if (SW_L==0) 	
	{
			R_LED_ON;
			L_LED_ON;	
			a--; //left
	}
		
	
	else if (SW_R==0) 	
	{
		R_LED_ON;
		L_LED_ON;	
		a++; //right
		
	}

	if (b>2) b=0;

	if (a<0) a=0;

	if (a>4) a=0;

		
	SELECT[b][a]();
}




