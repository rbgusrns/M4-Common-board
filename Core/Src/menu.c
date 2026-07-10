#include "menu.h"
#include "motor.h"
#include "sensor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include "fastrun.h"
#include "variable.h"
#include <stdio.h>
#include <string.h>

// Switch macros for readability
#define Down_SW   (SW_D == 0)
#define Up_SW     (SW_U == 0)
#define Left_SW   (SW_L == 0)
#define Right_SW  (SW_R == 0)

// Optional additional inputs (if any)
#define Down_W    0
#define Up_W      0
#define Left_W    0
#define Right_W   0

#define DELAY     135 // Delay in ms

int32_t row = 0;
int32_t column = 0;

char menu_sel[ROW][COLUMN][9] = {
    {"MAX_MIN_", "__4095__", "SEN_127_", "POSCHECK", "TURNMARK"},
    {"Set_VELO", "Set_ACC_", "END_ACC_", "HAND_ACC", "HAND_DEC"},
    {"1st_RACE", "2nd_RACE", "TURNDIST", "", ""}
};

static const uint8_t menu_item_count[ROW] = {5U, 5U, 3U};

void (* menu_functions[ROW][COLUMN])(void) =
{
    {F_Max_min,    F_4095,         F_127,        F_POSCHECK,   F_TURNMARK},
    {F_VELOCITY,   F_ACCELERATION, F_ENDACCEL,   F_HANDLE_ACC, F_HANDLE_DEC},
    {F_1st_run,    second_race,    F_TURNDIST,   NULL,         NULL}
};

void menu(void)
{
    if(Down_SW || Down_W) {
        LL_mDelay(DELAY);
        row++;
        column = 0;
        if(row > ROW - 1)
        {
            row = 0;
        }
    }

    if(Right_SW || Right_W) {
        LL_mDelay(DELAY);
        column++;
        if(column >= menu_item_count[row])
        {
            column = 0;
        }
    }

    if(Left_SW || Left_W) {
        LL_mDelay(DELAY);
        column--;
        if(column < 0)
        {
            column = (int32_t)menu_item_count[row] - 1;
        }
    }

    if(Up_SW) {
        LL_mDelay(DELAY);
        menu_functions[row][column]();
        OLED_Clear();
    }

    OLED_ClearBuffer();

    char cat_buf[40];
    const char *cat_name = "";
    if (row == 0)
    {
        cat_name = "SENSOR";
    }
    else if (row == 1)
    {
        cat_name = "MOTOR";
    }
    else if (row == 2)
    {
        cat_name = "RACE";
    }
    char temp_cat[32];
    snprintf(temp_cat, sizeof(temp_cat), "%s GROUP", cat_name);
    int pad_cat = (21 - (int)strlen(temp_cat)) / 2;
    if (pad_cat < 0) pad_cat = 0;
    if (pad_cat > 20) pad_cat = 20;
    memset(cat_buf, ' ', pad_cat);
    cat_buf[pad_cat] = '\0';
    snprintf(cat_buf + pad_cat, sizeof(cat_buf) - pad_cat, "%s", temp_cat);

    char scroll_buf[40];
    char dots[10];
    uint8_t item_count = menu_item_count[row];
    for (uint8_t idx = 0U; idx < item_count; idx++)
    {
        dots[idx * 2U] = (idx == (uint8_t)column) ? '*' : 'o';
        dots[idx * 2U + 1U] = ' ';
    }
    dots[(item_count * 2U) - 1U] = '\0';
    int pad_scroll = (21 - (int)strlen(dots)) / 2;
    if (pad_scroll < 0) pad_scroll = 0;
    if (pad_scroll > 20) pad_scroll = 20;
    memset(scroll_buf, ' ', pad_scroll);
    scroll_buf[pad_scroll] = '\0';
    snprintf(scroll_buf + pad_scroll, sizeof(scroll_buf) - pad_scroll, "%s", dots);

    char item_buf[40];
    char temp_item[32];
    snprintf(temp_item, sizeof(temp_item), "> %s <", menu_sel[row][column]);
    int pad_item = (21 - (int)strlen(temp_item)) / 2;
    if (pad_item < 0) pad_item = 0;
    if (pad_item > 20) pad_item = 20;
    memset(item_buf, ' ', pad_item);
    item_buf[pad_item] = '\0';
    snprintf(item_buf + pad_item, sizeof(item_buf) - pad_item, "%s", temp_item);

    OLED_Print(0U, 0U, cat_buf);
    OLED_Print(1U, 0U, scroll_buf);
    OLED_Print(2U, 0U, item_buf);
    // OLED Page 3 is intentionally left blank to provide visual breathing room

    OLED_Update();
}

void menu_start(void)
{
    OLED_Init();
    sensor_scan_start();

    while(1)
    {
         menu();
         LL_mDelay(1);
    }
}
