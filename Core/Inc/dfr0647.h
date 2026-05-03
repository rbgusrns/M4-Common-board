#pragma once
#include <stdint.h>

void dfr0647_init(void);
void dfr0647_clear(void);
void dfr0647_draw_string(uint8_t x, uint8_t page, const char* s);

// 숫자 출력(문자열 변환 포함). printf/sprintf 의존 없이 동작하도록 최소 구현.
void dfr0647_draw_u16(uint8_t x, uint8_t page, uint16_t v);
void dfr0647_draw_i32(uint8_t x, uint8_t page, int32_t v);
// decimals: 0~4 권장 (너무 크면 문자열 길이가 길어져 화면 폭 초과 가능)
void dfr0647_draw_f32(uint8_t x, uint8_t page, float v, uint8_t decimals);
void dfr0647_update(void);

// Optional: override I2C 7-bit address (default: 0x3C)
void dfr0647_set_addr7(uint8_t addr7);
