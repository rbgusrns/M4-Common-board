#ifndef __OLED_H__
#define __OLED_H__

#include "dfr0647.h"
#include <stdarg.h>

void OLED_Init(void);
void OLED_Printf(const char *fmt, ...);
void OLED_Clear(void);

#endif
