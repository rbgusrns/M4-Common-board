/**
  ******************************************************************************
  * @file    rom.h
  * @brief   Parameter storage via SPI EEPROM
  *
  * @note    Ported from Rom.h/_Viper_ (TMS320F2809)
  *          Original used SPI Flash/EEPROM; this version keeps same interface
  *          with STM32 SPI1 HAL
  ******************************************************************************
  */

#ifndef __ROM_H__
#define __ROM_H__

#include "viper_variable.h"

/* ──────────── EEPROM page layout ──────────── */
typedef enum
{
    MAX_PAGE = 256,
    LINE_INFO = 256,

    _MAXMIN_BLOCK = 256,
    _MAXMIN_CTRL = 1,
    VELOCITY_PAGE,
    ACCEL_PAGE,
    DCCEL_PAGE,
    END_ACCEL_PAGE,
    MARK_PAGE,

    LINE_DDIST_PAGE_1,
    LINE_TURN_PAGE_1,
    LINE_LDIST_PAGE_1,
    LINE_RDIST_PAGE_1,
    LINE_CDIST_PAGE_1,
    LINE_DDIST_PAGE_2,
    LINE_TURN_PAGE_2,
    LINE_LDIST_PAGE_2,
    LINE_RDIST_PAGE_2,
    LINE_CDIST_PAGE_2,

    LINE_DECEL_PAGE_1,
    LINE_DECEL_PAGE_2,

    HANDLE_ACC_PAGE,
    HANDLE_DEC_PAGE
} rom_e;

/* ──────────── Low-level SPI EEPROM R/W ──────────── */
void SpiWriteRom(uint16_t page, uint8_t addr, uint16_t len, uint16_t *buf);
void SpiReadRom(uint16_t page, uint8_t addr, uint16_t len, uint16_t *buf);

/* ──────────── Parameter read/write functions ──────────── */
void maxmin_read_rom(void);
void maxmin_write_rom(void);

void read_handle_acc_rom(void);
void write_acc_handle_rom(void);

void read_handle_dec_rom(void);
void write_dec_handle_rom(void);

void read_line_info_rom(void);
void write_line_info_rom(void);

void read_mark_cnt_rom(void);
void write_mark_cnt_rom(void);

void read_end_acc_rom(void);
void write_end_acc_rom(void);

void read_acc_rom(void);
void write_acc_rom(void);

void read_vel_rom(void);
void write_vel_rom(void);

#endif /* __ROM_H__ */
