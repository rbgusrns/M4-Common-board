/**
  ******************************************************************************
  * @file    sensor.h
  * @brief   16-channel line sensor scanning and processing
  *
  * @note    Ported from sensor.h/_Viper_ (TMS320F2809)
  *          ADC scanning redesigned for STM32G474 multi-ADC + DMA architecture
 *          Refer to docs/sensor_system_design.md for hardware details
  ******************************************************************************
  */

#ifndef __SENSOR_H__
#define __SENSOR_H__

#include "viper_variable.h"

/* ──────────── Sensor system constants ──────────── */
#define SEN_NUM     8       /* Number of scan steps (8 LED pairs) */
#define ADC_NUM     16      /* Total number of photo sensors */

#define LEFT_ENABLE     0xf000
#define RIGHT_ENABLE    0x000f

/* ──────────── Sensor scan step info ──────────── */
typedef struct {
    led_pin_t       led;            /* Emitter LED GPIO */
    ADC_HandleTypeDef *hadc_hi;     /* ADC for Hi sensor (S7→S0) */
    ADC_HandleTypeDef *hadc_lo;     /* ADC for Lo sensor (S15→S8) */
    uint32_t        adc_hi_channel; /* ADC regular channel for Hi */
    uint32_t        adc_lo_channel; /* ADC regular channel for Lo */
    uint8_t         sen_hi_idx;     /* Index into g_sen[] for Hi */
    uint8_t         sen_lo_idx;     /* Index into g_sen[] for Lo */
} scan_step_t;

extern const scan_step_t scan_table[SEN_NUM];

/* ──────────── DMA completion flags ──────────── */
extern volatile uint8_t g_dma_done_flags;   /* bit0=Hi, bit1=Lo */

/* ──────────── ADC DMA buffers ──────────── */
extern volatile uint32_t g_adc_buf_hi;
extern volatile uint32_t g_adc_buf_lo;

/* ──────────── Current scan step ──────────── */
extern volatile uint8_t g_scan_step;

/* ──────────── Public functions ──────────── */

/* Initialization */
void sen_vari_init(void);
void sensor_scan_start(void);

/* Calibration & display */
void F_4095(void);
void F_Max_min(void);
void F_127(void);
void F_POSCHECK(void);
void F_CHECKMAX(void);
void F_CHECKMIN(void);
void F_TURNMARK(void);

/* Runtime processing */
void sensor_normalize(uint8_t idx);
void make_position(void);
void position_check(void);
void Handle(void);

/* Turn mark detection */
void turn_decide(turnmark_t *p_mark, turnmark_t *p_remark);
void start_end_check(void);
void line_info(turnmark_t *p_mark);
int  line_out_func(void);

/* Sensor check */
void sensor_check_127(void);

#endif /* __SENSOR_H__ */
