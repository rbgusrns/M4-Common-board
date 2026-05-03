//###########################################################################
//
// FILE		: Rom.h
//
// TITLE	: Rom h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.11.9 $
//###########################################################################

#ifndef __ROM_H__
#define __ROM_H__

extern void maxmin_read_rom( void );
extern void maxmin_write_rom( void );

extern void read_handle_acc_rom(void);
extern void write_acc_handle_rom(void);

extern void read_handle_dec_rom(void);
extern void write_dec_handle_rom(void);

extern void read_line_info_rom( void );
extern void write_line_info_rom(void);

extern void read_mark_cnt_rom(void);
extern void write_mark_cnt_rom(void);

extern void read_end_acc_rom(void);
extern void write_end_acc_rom(void);

extern void read_acc_rom(void);
extern void write_acc_rom(void);

extern void read_vel_rom(void);
extern void write_vel_rom(void);








#endif

