#ifndef __OLED_H__
#define __OLED_H__

#include <stdint.h>

#define OLED_WIDTH 128U
#define OLED_HEIGHT 32U
#define OLED_PAGE_COUNT (OLED_HEIGHT / 8U)

#ifndef OLED_HW_ENABLE
#define OLED_HW_ENABLE 1U
#endif

#ifndef OLED_SERIAL_FALLBACK
#define OLED_SERIAL_FALLBACK 1U
#endif

void OLED_Init(void);
void OLED_Clear(void);
void OLED_Update(void);
uint8_t OLED_IsBusy(void);
void OLED_Print(uint8_t row, uint8_t col, const char *str);
void OLED_Printf(uint8_t row, uint8_t col, const char *fmt, ...);

void OLED_ClearBuffer(void);

extern const uint8_t font5x7[95][5];

#endif
