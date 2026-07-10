/**
  ******************************************************************************
  * @file    sensor.h
  * @brief   16-channel line sensor scanning and processing
  *
  * @note    Ported from sensor.h/_Viper_ (TMS320F2809)
 *          ADC scanning uses the legacy timer ISR + ADC ISR split
 *          Refer to docs/sensor_system_design.md for hardware details
  ******************************************************************************
  */

#ifndef __SENSOR_H__
#define __SENSOR_H__

#include "variable.h"

/* ──────────── Sensor system constants ──────────── */
#define SEN_NUM     8       /* Number of scan steps (8 LED pairs) */
#define ADC_NUM     16      /* Total number of photo sensors */

#define LEFT_ENABLE     0xf000
#define RIGHT_ENABLE    0x000f

/* ──────────── Sensor scan step info ──────────── */
typedef struct {
    led_pin_t       led;            /* Emitter LED GPIO */
    uint8_t         sen_hi_idx;     /* Index into g_sen[] for Hi */
    uint8_t         sen_lo_idx;     /* Index into g_sen[] for Lo */
} scan_step_t;

extern const scan_step_t scan_table[SEN_NUM];

/* ──────────── Scan state ──────────── */
extern volatile uint8_t g_scan_step;

/* ──────────── Public functions ──────────── */

/* Initialization */
void sen_vari_init(void);
void sensor_scan_start(void);
void sensor_adc_irq_handler(void);
void sensor_tim2_irq_handler(void);
void Sensor_Value(void);
void adc_timer_ISR(void);

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

#endif /* __SENSOR_H__ */
