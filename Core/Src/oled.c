#include "oled.h"
#include <stdio.h>
#include <string.h>

void OLED_Init(void)
{
    // 사용자 제공 i2c_sw & dfr0647 사용
    dfr0647_init();
    dfr0647_clear();
    dfr0647_update();
}

void OLED_Clear(void)
{
    dfr0647_clear();
    dfr0647_update();
}

// 기존 VFDPrintf를 대체하는 OLED_Printf (첫 번째 줄에 출력되게끔 임시 고정)
void OLED_Printf(const char *fmt, ...)
{
    char buf[32]; // DFR0647이 보통 16~21자 정도 표시 가능
    memset(buf, 0, sizeof(buf));

    va_list args;
    va_start(args, fmt);
    vsnprintf(buf, sizeof(buf), fmt, args);
    va_end(args);

    dfr0647_clear();
    // 0행, 0열 (Page 0, X 0)에 출력
    dfr0647_draw_string(0, 0, buf);
    dfr0647_update();
}
