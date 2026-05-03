//###########################################################################
//
// FILE		: senser.h
//
// TITLE	: senser h file
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.10 $
//###########################################################################


#ifndef __SENSOR_H__
#define __SENSOR_H__

interrupt void Sensor_Value(void);
interrupt void ADC_TIMER_ISR(void);

extern void sen_vari_init(void);
extern void sensor_check_127(void);
extern void make_position(void);
extern void position_check(void);

#define   ADC0   0x0000 
#define   ADC1   0x1111 
#define   ADC2   0x2222 
#define   ADC3   0x3333
#define   ADC4   0x4444
#define   ADC5   0x5555
#define   ADC6   0x6666
#define   ADC7   0x7777
#define   ADC8   0x8888
#define   ADC9   0x9999
#define   ADC10  0xaaaa
#define   ADC11  0xbbbb
#define   ADC12  0xcccc
#define   ADC13  0xdddd
#define   ADC14  0xeeee
#define   ADC15  0xffff

void F_4095();

void F_Max_min();

void F_127();

interrupt void ADC_TIMER_ISR(void);

interrupt void Sensor_Value(void);

void turn_decide( turnmark_t *p_mark , turnmark_t *p_remark );

void start_end_check(void);

void line_info(turnmark_t *p_mark);

static void mark_enable_shift( turnmark_t *pleft , turnmark_t *pright );

static int32 cross_check( void );

void F_TURNMARK();

void sensor_check_127(void);

void position_check(void);

void sen_vari_init(void);

void make_position(void);

static void position_enable(position_t *ppos);

void sen_init( void );
	
void F_POSCHECK();

void F_CHECKMAX();

void F_CHECKMIN();

void Handle(void);

int line_out_func( void );

#endif
