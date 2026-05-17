#include "search.h"
#include "motor.h"
#include "sensor.h"
#include "oled.h"
#include "rom.h"

void Race_Init()
{
    g_Flag.move_state = OFF;
    g_Flag.Lturnmark_flag=OFF;
    g_Flag.Rturnmark_flag=OFF;
    
    g_int32_lineout_cnt = 0;
    g_int32_isr_cnt = 0;
    g_int32speed_up_cnt = 0;
        
    g_Flag.motor = OFF;
    g_Flag.cross_flag= OFF;
    g_Flag.lineout_flag= OFF;
    g_Flag.stop_check = OFF;
    g_rmark.u16cross_flag = OFF;
    g_lmark.u16cross_flag = OFF;
    g_rmark.u16single_flag = OFF;
    g_lmark.u16single_flag = OFF;
    g_Flag.move_state= OFF;
    g_Flag.race_start = OFF;
    g_Flag.first_race = OFF;
    g_Flag.second_race = OFF;
    
    g_Flag.straight_run = OFF;
    g_Flag.speed_up = OFF;
    g_Flag.speed_up_start= OFF;
     
    g_motor.iq15GoneDist = RMotor.iq15GoneDist = LMotor.iq15GoneDist = 0.0f;
    g_motor.iq17Turnmark_Check_Dist = RMotor.iq17Turnmark_Check_Dist = LMotor.iq17Turnmark_Check_Dist = 0.0f;
    g_motor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = LMotor.iq15Cross_Check_Dist = 0.0f;
    RMotor.iqNextV = LMotor.iqNextV = 0.0f;

    g_u32_L_index = 0;
    g_u32_R_index = 0;
    g_q15cross_dist = 0.0f;
    
    for(i=0; i<256; i++)
    {
        search_info[i].int32turn_way=0;
    }
    U16_turnmark_cnt=0;

    read_acc_rom();
    read_vel_rom();
    read_end_acc_rom();
    read_handle_acc_rom();
    read_handle_dec_rom();
    maxmin_read_rom();
    
    g_q17_handle_acc = (float)g_i16_handle_acc * 0.00000001f;
    g_q17_handle_dec = (float)g_i16_handle_dec * 0.0000001f;
}


void F_1st_run()
{
    a=0;
    b=0;
    c=0;
    d=0;
    // StartCpuTimer0();
    OLED_Printf(0U, 0U, "_ _GO_ _");
    HAL_Delay(100);
        
    search_race();
         
    OLED_Printf(0U, 0U, "__END___");

    a=1;
    b=2; 
}


int race_stop_check( void )
{
    if( !g_Flag.stop_check ) return 0;
     
    if( (RMotor.iqNextV < 30.0f) && (LMotor.iqNextV < 30.0f) )
    {
        while( (RMotor.iqNextV != 0.0f) && (LMotor.iqNextV != 0.0f) )
        {
            RMotor.iqTargetV = LMotor.iqTargetV = 0.0f;
            motor_stop_all();
        }

        g_Flag.motor = OFF; 

        // StopCpuTimer0();
        motor_stop_all();
        
        if(g_Flag.first_race)
        {
            while(SW_U)
            {
                OLED_Printf(0U, 0U, "MARK:%u", U16_turnmark_cnt);
            }
            line_info(NULL);
            write_mark_cnt_rom();
            write_line_info_rom();

            OLED_Printf(0U, 0U, "__SAVE__");
            HAL_Delay(1000);
            // float printing is not natively supported without changes in some stdlib setups, but we'll leave the format.
            OLED_Printf(0U, 0U, "T:%3.2f", g_fp32time);
        }
    }
    return 0;
}


int lineout()
{
    if ((g_pos.iq10temp_position >= 16000.0f || g_pos.iq10temp_position <= -16000.0f) && 
        (S6==0.0f && S7==0.0f && S8==0.0f && S9==0.0f))    
    {
        g_Flag.end_flag = ON;
        
        // StopCpuTimer0();
        motor_stop_all();
        
        return g_Flag.end_flag;
    }
    else 
        return 0;
}


void search_race()
{
    a=0;
    motor_vari_init();
    HAL_Delay(500);
    OLED_Printf(0U, 0U, "        ");
   
    g_Flag.first_race = ON;

    U16_turnmark_cnt=0;
    g_Flag.cross_flag = OFF;
    g_Flag.start_flag = OFF;
    g_Flag.end_flag = OFF;
 
    move_to_move(500.0f, 0.0f, (float)g_u32_VEL_targetval, (float)g_u32_VEL_targetval, g_u32_ACC_targetval);

    g_Flag.motor = ON;
    g_Flag.move_state = ON;
    
    while(1)
    { 
        make_position(); 
        Handle();

        g_lmark.iq17turnmark_dist = g_rmark.iq17turnmark_dist = (RMotor.iq17Turnmark_Check_Dist + LMotor.iq17Turnmark_Check_Dist) * 0.5f;

        turn_decide(&g_lmark, &g_rmark);
        turn_decide(&g_rmark, &g_lmark); 

        if( g_int32_isr_cnt )
        {    
            if( line_out_func() || race_stop_check() ) return;
            g_int32_isr_cnt = 0;
        }
    }
}
