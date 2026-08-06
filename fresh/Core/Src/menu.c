#include "menu.h"
#include "motor.h"
#include "sensor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include "variable.h"
#include <stdio.h>
#include <string.h>

// Switch macros for readability
#define Down_SW   (SW_D == 0)
#define Up_SW     (SW_U == 0)
#define Left_SW   (SW_L == 0)
#define Right_SW  (SW_R == 0)

#define DELAY     135 // Delay in ms

// TODO: 메뉴 인덱스 및 메뉴 이름 목록 등 메뉴 조작에 필요한 변수들을 직접 정의.
// 예: int32_t menu_index = 0;

void menu(void)
{
    // TODO:스위치 입력(Up_SW, Down_SW, Left_SW, Right_SW 등)을 처리하여
    // OLED 화면에 메뉴명들을 출력하고, 버튼 입력에 따라 각 주행/디버깅 기능들을 매핑하여
    // 실행하도록 구현. (OLED_Printf, OLED_Clear 등을 활용해 단순 텍스트 출력을 연습)
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

