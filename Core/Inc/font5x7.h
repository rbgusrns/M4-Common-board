#pragma once
#include <stdint.h>

// 0x20(공백) ~ 0x7E(~) ASCII 95개
// 각 문자는 5바이트(5x7) 컬럼 비트맵
extern const uint8_t font5x7[95][5];
