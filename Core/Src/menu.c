#include "menu.h"
#include "motor.h"
#include "sensor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include "fastrun.h"
#include "viper_variable.h"

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
    {"_SENSOR_", "MAX_MIN_", "__4095__", "SEN_127_", "Set_MARK", "__GYRO__"},
    {"MOTOR_ST", "Set_VELO", "Set_ACC_", "Set_HAND", "Set_MPID", "Set_PPID"},
    {"_ RACE _", "1st_RACE", "2nd_RACE", "fst_info", "brl_info", "  NULL  "},
    {"EXTREME ", "Bril_ctl", "_ MODE _", "Brl_RACE", "SFT_CTRL", "  NULL  "}    
};

void _NULL_FUNC(void)
{
    OLED_Printf("NOTTING_");
    HAL_Delay(500);
}

void (* menu_functions[ROW][COLUMN])(void) = 
{
    {_NULL_FUNC, F_Max_min,    F_4095,         F_127,        F_TURNMARK, _NULL_FUNC},
    {_NULL_FUNC, F_VELOCITY,   F_ACCELERATION, F_HANDLE_ACC, _NULL_FUNC, _NULL_FUNC},
    {_NULL_FUNC, F_1st_run,    second_race,    _NULL_FUNC,   _NULL_FUNC, _NULL_FUNC},
    {_NULL_FUNC, _NULL_FUNC,   _NULL_FUNC,     _NULL_FUNC,   _NULL_FUNC, _NULL_FUNC}           
};        

void menu(void)
{
    if(Down_SW || Down_W) { HAL_Delay(DELAY); row++;  column = 0; }
    if(row > ROW - 1) row = 0;

    if(Right_SW || Right_W) { HAL_Delay(DELAY); column++; }
    if(column > COLUMN - 1) column = 0;

    if(Up_SW) { 
        HAL_Delay(DELAY); 
        if(menu_functions[row][column] != NULL) {
            menu_functions[row][column](); 
        }
    }
    
    OLED_Printf("%s", menu_sel[row][column]);

    if(Left_SW || Left_W) { HAL_Delay(DELAY); column--; }
    if(column < 0) column = 0;
}

void menu_start(void)
{
    HAL_Delay(100);
    OLED_Init(); // Initialize I2C OLED display

    while(1) 
    {     
         menu();
         HAL_Delay(1); // Small loop delay
    }
}
