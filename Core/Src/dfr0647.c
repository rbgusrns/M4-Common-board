#include "dfr0647.h"
#include "main.h"
#include "font5x7.h"

extern I2C_HandleTypeDef hi2c2;

// Default SSD1306 I2C 7-bit address is often 0x3C (sometimes 0x3D depending on SA0).
// You can override at runtime via dfr0647_set_addr7().
static uint8_t g_oled_addr7 = 0x3Cu;
#define OLED_W 128u
#define OLED_H 32u
#define OLED_PAGES (OLED_H/8u)

static uint8_t fb[OLED_W * OLED_PAGES];

void dfr0647_set_addr7(uint8_t addr7) {
  g_oled_addr7 = (uint8_t)(addr7 & 0x7Fu);
}

static void oled_cmd(uint8_t c) {
  HAL_I2C_Mem_Write(&hi2c2, g_oled_addr7 << 1, 0x00, I2C_MEMADD_SIZE_8BIT, &c, 1, 10);
}

static void oled_data(const uint8_t* data, uint16_t len) {
  HAL_I2C_Mem_Write(&hi2c2, g_oled_addr7 << 1, 0x40, I2C_MEMADD_SIZE_8BIT, (uint8_t*)data, len, 100);
}

void dfr0647_init(void) {
  // SSD1306 128x32 기본 init 시퀀스(표준적으로 널리 사용)
  oled_cmd(0xAE); // display off
  oled_cmd(0x20); oled_cmd(0x00); // horizontal addressing mode
  oled_cmd(0xB0); // page 0
  oled_cmd(0xC8); // COM scan dir remap
  oled_cmd(0x00); // low column
  oled_cmd(0x10); // high column
  oled_cmd(0x40); // start line 0
  oled_cmd(0x81); oled_cmd(0x7F); // contrast
  oled_cmd(0xA1); // segment remap
  oled_cmd(0xA6); // normal display
  oled_cmd(0xA8); oled_cmd(0x1F); // multiplex 1/32
  oled_cmd(0xD3); oled_cmd(0x00); // display offset
  oled_cmd(0xD5); oled_cmd(0x80); // clock divide
  oled_cmd(0xD9); oled_cmd(0xF1); // pre-charge
  oled_cmd(0xDA); oled_cmd(0x02); // COM pins for 128x32
  oled_cmd(0xDB); oled_cmd(0x40); // Vcomh
  oled_cmd(0x8D); oled_cmd(0x14); // charge pump enable
  oled_cmd(0xAF); // display on

  dfr0647_clear();
  dfr0647_update();
}

void dfr0647_clear(void) {
  for (uint32_t i = 0; i < sizeof(fb); i++) fb[i] = 0x00u;
}

static void draw_char(uint8_t x, uint8_t page, char ch) {
  if (page >= OLED_PAGES) return;
  if (x >= OLED_W) return;
  if (ch < 0x20 || ch > 0x7E) ch = '?';

  const uint8_t* glyph = font5x7[(uint8_t)ch - 0x20];
  uint16_t idx = (uint16_t)page * OLED_W + x;

  // 5 columns + 1 spacing
  for (uint8_t col = 0; col < 5; col++) {
    if ((x + col) < OLED_W) fb[idx + col] = glyph[col];
  }
  if ((x + 5) < OLED_W) fb[idx + 5] = 0x00u;
}

void dfr0647_draw_string(uint8_t x, uint8_t page, const char* s) {
  if (!s) return;
  // Cast to avoid signed/unsigned comparison warnings under -Wall
  while (*s && ((uint32_t)x < (uint32_t)(OLED_W - 6u))) {
    draw_char(x, page, *s++);
    x = (uint8_t)(x + 6u);
  }
}

// ----------------- minimal number formatting (no sprintf) -----------------
static uint8_t u32_to_dec(char* out, uint32_t v) {
  // returns length, writes null-terminated
  char tmp[11];
  uint8_t n = 0;
  do {
    tmp[n++] = (char)('0' + (v % 10u));
    v /= 10u;
  } while (v && n < sizeof(tmp));

  // reverse
  for (uint8_t i = 0; i < n; i++) out[i] = tmp[(uint8_t)(n - 1u - i)];
  out[n] = '\0';
  return n;
}

static uint8_t i32_to_dec(char* out, int32_t v) {
  if (v < 0) {
    out[0] = '-';
    uint32_t mag = (uint32_t)(-(int64_t)v);
    return (uint8_t)(1u + u32_to_dec(&out[1], mag));
  }
  return u32_to_dec(out, (uint32_t)v);
}

void dfr0647_draw_u16(uint8_t x, uint8_t page, uint16_t v) {
  char buf[8];
  (void)u32_to_dec(buf, (uint32_t)v);
  dfr0647_draw_string(x, page, buf);
}

void dfr0647_draw_i32(uint8_t x, uint8_t page, int32_t v) {
  char buf[16];
  (void)i32_to_dec(buf, v);
  dfr0647_draw_string(x, page, buf);
}

void dfr0647_draw_f32(uint8_t x, uint8_t page, float v, uint8_t decimals) {
  // decimals: 0..4 정도를 권장(버퍼/화면폭, 그리고 float 연산 비용 고려)
  if (decimals > 4u) decimals = 4u;

  char buf[24];
  uint8_t pos = 0;

  if (v < 0.0f) {
    buf[pos++] = '-';
    v = -v;
  }

  uint32_t ip = (uint32_t)v;
  float frac = v - (float)ip;

  uint32_t scale = 1u;
  for (uint8_t i = 0; i < decimals; i++) scale *= 10u;

  uint32_t fp = 0u;
  if (decimals) {
    fp = (uint32_t)(frac * (float)scale + 0.5f); // rounding
    if (fp >= scale) {
      fp = 0u;
      ip += 1u;
    }
  }

  // integer part
  pos = (uint8_t)(pos + u32_to_dec(&buf[pos], ip));

  if (decimals) {
    buf[pos++] = '.';

    // fractional part with leading zeros
    uint32_t div = scale / 10u;
    while (div) {
      uint32_t digit = fp / div;
      buf[pos++] = (char)('0' + (digit % 10u));
      fp %= div;
      div /= 10u;
    }
    buf[pos] = '\0';
  }

  dfr0647_draw_string(x, page, buf);
}

void dfr0647_update(void) {
  for (uint8_t page = 0; page < OLED_PAGES; page++) {
    oled_cmd((uint8_t)(0xB0u + page));
    oled_cmd(0x00);
    oled_cmd(0x10);
    oled_data(&fb[page * OLED_W], OLED_W);
  }
}
