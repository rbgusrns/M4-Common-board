#include "fastrun.h"
#include "motor.h"
#include "sensor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include <math.h>

static void turn_division_func(void);
static void turn_division_compute(race_info *pinfo, int32_t mark);
static void large_turn_compute(race_info *pinfo, int32_t mark);
static void straight_compute(race_info *pinfo, int32_t mark);
static void default_turn_compute(race_info *pinfo, int32_t mark);
static void speed_up_func(void);

void second_race()
{
    // StartCpuTimer0();
    OLED_Printf("_ _GO_ _");
    fast_race(search_info);
}

void fast_race(race_info *pinfo)
{
    HAL_Delay(100);
    read_line_info_rom();
    
    turn_info_func(); 
    turn_division_func();

    Race_Init();
    OLED_Printf("        ");
    
    g_Flag.second_race = ON;
    
    pinfo->int32accel = g_u32_ACC_targetval;
    
    move_to_move( (float)pinfo->int32dist, pinfo->iq7dec_dist, pinfo->iq7vel, pinfo->iq7out_vel, pinfo->int32accel);
    
    g_Flag.motor = ON;    
    g_Flag.move_state = ON;
    // BLUE_ON;
    
    while(1)
    {    
        make_position();
        Handle();

        if( g_Flag.move_state )
        {
            g_lmark.iq17turnmark_dist = g_rmark.iq17turnmark_dist = (RMotor.iq17Turnmark_Check_Dist + LMotor.iq17Turnmark_Check_Dist) * 0.5f;
            g_q15cross_dist = ( RMotor.iq15Cross_Check_Dist + LMotor.iq15Cross_Check_Dist ) * 0.5f;
            
            turn_decide(&g_lmark, &g_rmark);
            turn_decide(&g_rmark, &g_lmark);

            // if (pinfo->int32turn_way == STRAIGHT) BLUE_ON;
        }
        
        if( g_int32_isr_cnt )
        {
            if( line_out_func() || race_stop_check() ) return;

            speed_up_compute(pinfo);
            
            g_int32_isr_cnt = 0;
        }
    }
}

static void turn_division_func( void )
{
    int32_t i = 0;
    for( i = 0 ; i <= g_int32total_cnt ; i ++ )   
    {
        turn_division_compute( &search_info[ i ], i );
    }
}    

void second_info(race_info *p_info)
{
    race_info *pinfo = p_info;

    U16_turnmark_cnt++;

    if( ( pinfo + U16_turnmark_cnt )->int32turn_dir & ( STRAIGHT | END_TURN ) )        
        g_Flag.speed_up_start = ON;
    else                                                                            
        g_Flag.straight_run = OFF;
    
    move_to_move( (float)( pinfo + U16_turnmark_cnt )->int32dist, 
                  ( pinfo + U16_turnmark_cnt )->iq7dec_dist, 
                  ( pinfo + U16_turnmark_cnt)->iq7vel, 
                  ( pinfo + U16_turnmark_cnt)->iq7out_vel, 
                  ( pinfo + U16_turnmark_cnt )->int32accel );

    speed_up_func();
    
    LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0.0f;
    LMotor.iq17distance_sum = RMotor.iq17distance_sum = 0.0f;
}

static void turn_division_compute( race_info *pinfo, int32_t mark)
{
    if( ( pinfo->int32turn_dir & STRAIGHT ) || pinfo->int32turn_dir & END_TURN )    
        straight_compute( pinfo , mark ); 
    else if( pinfo->int32turn_dir & LARGE_TURN )                                    
        large_turn_compute( pinfo, mark);
    else                                                                            
        default_turn_compute( pinfo , mark ); 
}

static void large_turn_compute( race_info *pinfo, int32_t mark)
{
    volatile float big_vel = 0.0f;
    volatile float small_vel = 0.0f;

    pinfo->iq7in_vel = (mark > 0) ? ( pinfo - 1 )->iq7out_vel : 0.0f; 

    turn_division_compute( ( pinfo + 1 ), ( mark + 1 ));
    pinfo->iq7out_vel = ( pinfo + 1 )->iq7in_vel;

    pinfo->int32accel = g_int32large_ACC;

    big_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7in_vel : pinfo->iq7out_vel;
    small_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7out_vel : pinfo->iq7in_vel;

    decel_dist_compute( pinfo->iq7in_vel, pinfo->iq7out_vel, pinfo->int32accel, (float *)&pinfo->iq7m_dist );

    if( pinfo->iq7m_dist >= (float)( pinfo->int32dist ) )
    {
        pinfo->iq7dec_dist = (float)( pinfo->int32dist );
        max_vel_compute( (float)( pinfo->int32dist ), 0.0f, small_vel, pinfo->int32accel, (float *)&pinfo->iq7vel );

        if( pinfo->iq7in_vel > pinfo->iq7out_vel )  pinfo->iq7in_vel = pinfo->iq7vel;
        else                                        pinfo->iq7out_vel = pinfo->iq7vel;

        if( !mark )     
            pinfo->iq7in_vel = 0.0f;
    }
    else
    {
        max_vel_compute( (float)( pinfo->int32dist ), pinfo->iq7m_dist, big_vel, pinfo->int32accel, (float *)&pinfo->iq7vel );
        decel_dist_compute( pinfo->iq7vel, pinfo->iq7out_vel, pinfo->int32accel, (float *)&pinfo->iq7dec_dist );
    }
}

static void straight_compute( race_info *pinfo, int32_t mark)
{
    volatile float big_vel = 0.0f;
    volatile float small_vel = 0.0f;

    pinfo->iq7in_vel = (mark > 0) ? ( pinfo - 1 )->iq7out_vel : 0.0f; 

    if( !( pinfo->int32turn_dir & END_TURN ) )  
    {
        turn_division_compute( ( pinfo + 1 ), ( mark + 1 ));    
        pinfo->iq7out_vel = ( pinfo + 1 )->iq7in_vel; 
    }
    else    
    {
        pinfo->iq7out_vel = (float)g_u32_END_VEL_targetval;
        (pinfo + 1)->iq7in_vel = pinfo->iq7out_vel = (float)g_u32_END_VEL_targetval;
    }
    
    if( pinfo->int32dist > LONG_DIST )
    {
        pinfo->int32accel = g_int32long_ACC;
        if( pinfo->int32turn_dir & END_TURN )
            pinfo->int32accel = ( pinfo->int32accel > 3000 )? 3000 : g_int32long_ACC;
    }
    else if( pinfo->int32dist > MID_DIST )  
        pinfo->int32accel = g_int32mid_ACC;
    else    
        pinfo->int32accel = g_int32short_ACC;

    if( !mark && pinfo->int32accel > 5500 )
        pinfo->int32accel = 5000;    
    else if( pinfo->int32turn_dir & END_TURN )
        pinfo->int32accel = 3000;   

    big_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7in_vel : pinfo->iq7out_vel;
    small_vel = ( pinfo->iq7in_vel > pinfo->iq7out_vel )? pinfo->iq7out_vel : pinfo->iq7in_vel;

    decel_dist_compute( pinfo->iq7in_vel, pinfo->iq7out_vel, pinfo->int32accel, (float *)&pinfo->iq7m_dist );

    if( pinfo->iq7m_dist >= (float)( pinfo->int32dist ) )
    {
        pinfo->iq7dec_dist = (float)( pinfo->int32dist );
        max_vel_compute( (float)( pinfo->int32dist ), 0.0f, small_vel, pinfo->int32accel, (float *)&pinfo->iq7vel );

        if( pinfo->iq7in_vel > pinfo->iq7out_vel )  pinfo->iq7in_vel = pinfo->iq7vel;
        else                                        pinfo->iq7out_vel = pinfo->iq7vel;

        if( !mark )     
            pinfo->iq7in_vel = 0.0f;
    }
    else
    {
        max_vel_compute( (float)( pinfo->int32dist ), pinfo->iq7m_dist, big_vel, pinfo->int32accel, (float *)&pinfo->iq7vel );
        decel_dist_compute( pinfo->iq7vel, pinfo->iq7out_vel, pinfo->int32accel, (float *)&pinfo->iq7dec_dist );
    }
}

static void default_turn_compute( race_info *pinfo, int32_t mark)
{
    pinfo->int32accel = 3000;
    pinfo->iq7in_vel = (float)g_u32_VEL_targetval;
    pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;

    pinfo->int32accel = 3000;
    if(pinfo->int32turn_dir & TURN_45)
    {
        pinfo->iq7in_vel = (float)(g_u32_VEL_targetval > g_int32turn_45_VEL ? g_int32turn_45_VEL : g_u32_VEL_targetval);
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    else if(pinfo->int32turn_dir & TURN_90)
    {
        pinfo->iq7in_vel = (float)(g_u32_VEL_targetval > g_int32turn_90_VEL ? g_int32turn_90_VEL : g_u32_VEL_targetval);
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    else if(pinfo->int32turn_dir & TURN_180)
    {
        pinfo->iq7in_vel = (float)(g_u32_VEL_targetval > g_int32turn_180_VEL ? g_int32turn_180_VEL : g_u32_VEL_targetval);
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    else if(pinfo->int32turn_dir & TURN_270)
    {
        pinfo->iq7in_vel = (float)(g_u32_VEL_targetval > g_int32turn_270_VEL ? g_int32turn_270_VEL : g_u32_VEL_targetval);
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    else if(pinfo->int32turn_dir & LARGE_TURN)
    {
        pinfo->iq7in_vel = (float)(g_int32turn_LARGE_VEL); 
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    else    
    {
        pinfo->iq7in_vel = (float)( g_u32_VEL_targetval );
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }

    if((pinfo->int32turn_dir >= TURN_180) && ((pinfo+1)->int32turn_dir >= TURN_180))    
    {
        pinfo->int32accel = 3000;
        if(pinfo->iq7in_vel >= 2200.0f)
            pinfo->iq7in_vel = 2200.0f;
 
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    else if(((pinfo-1)->int32turn_dir >= TURN_180) && (pinfo->int32turn_dir >= TURN_180))    
    {
        pinfo->int32accel = 3000;
        if(pinfo->iq7in_vel >= 2200.0f)
            pinfo->iq7in_vel = 2200.0f;
 
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
    
    if(((pinfo-1)->int32turn_dir & STRAIGHT) && (pinfo->int32turn_dir >= TURN_90) && ((pinfo+1)->int32turn_dir & STRAIGHT)) 
    {
        pinfo->int32accel = 3000;
        if(pinfo->iq7in_vel >= 2200.0f)
            pinfo->iq7in_vel = 2200.0f;
        pinfo->iq7vel = pinfo->iq7out_vel = pinfo->iq7in_vel;
    }
}

void max_vel_compute( float dist, float minus_dist, float cur_vel, int32_t acc, float *max_vel )
{
    dist -= minus_dist;
    dist = dist / 2000.0f;
    cur_vel = cur_vel / 1000.0f;
    
    float f_acc = (float)acc / 1000.0f;

    *max_vel = sqrtf( cur_vel * cur_vel + 2.0f * f_acc * dist ) * 1000.0f;

    if( *max_vel > 4500.0f ) *max_vel = 4500.0f;
    else if( *max_vel < (float)g_u32_VEL_targetval ) *max_vel = (float)g_u32_VEL_targetval;
}

void decel_dist_compute( float cur_vel, float tar_vel, int32_t acc, float *decel_dist )
{
    cur_vel = cur_vel / 1000.0f;
    tar_vel = tar_vel / 1000.0f;

    float f_acc = (float)acc / 1000.0f;
    if (f_acc == 0.0f) f_acc = 1.0f;

    *decel_dist = (fabsf(cur_vel * cur_vel - tar_vel * tar_vel) / (2.0f * f_acc)) * 1000.0f;
}

void turn_info_func()
{
    int32_t i = 0;
    for( i = 0; i <= g_int32total_cnt; i++ ) 
    {
        turn_info_compute( &search_info[ i ], i);
    }
} 

void turn_info_compute( race_info *pinfo, int32_t mark_cnt )
{
    int32_t max,min=0;
    int32_t temp = 0;
    
    if( !mark_cnt ) pinfo->int32turn_way = STRAIGHT;
    
    if( ( pinfo->int32turn_way & STRAIGHT ) && !( pinfo->int32turn_way & END_TURN ) )
    {
        pinfo->int32turn_dir = STRAIGHT; 
        pinfo->int32turn_cnt = D_STR;   

        if( mark_cnt )      
        {
            if( pinfo->int32dist > SHORT_DIST ) 
            {
                temp = pinfo->int32dist - ( int32_t )(( g_q17user_vel * (float)( pinfo - 1 )->int32turn_cnt ));
                
                if( temp <= 0 )
                {
                    temp = pinfo->int32dist;
                    ( pinfo - 1 )->int32turn_cnt = D_STR;
                }                
            }
            else 
            {
                temp = pinfo->int32dist;
                ( pinfo - 1 )->int32turn_cnt = D_STR;        
            }
    
            pinfo->int32dist = temp;
        }
    }
    else if( !( pinfo->int32turn_way & STRAIGHT ) && !( pinfo->int32turn_way & END_TURN ) )
    { 
        if( pinfo->int32dist <= TURN_45_DIST )
        {
            pinfo->int32turn_dir = TURN_45 | pinfo->int32turn_way; 
            pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_45 : D_STR; 
        }
        else if( pinfo->int32dist <= TURN_90_DIST ) 
        {
            pinfo->int32turn_dir = TURN_90 | pinfo->int32turn_way;
            pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_90 : D_STR;
        }
        else if( pinfo->int32dist <= TURN_180_DIST )    
        {
            pinfo->int32turn_dir = TURN_180 | pinfo->int32turn_way;
            pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_180 : D_STR;
        }
        else if( pinfo->int32dist > TURN_270_DIST )
        {
            max = ( pinfo->int32L_dist > pinfo->int32R_dist )? pinfo->int32L_dist : pinfo->int32R_dist;
            min = ( pinfo->int32L_dist > pinfo->int32R_dist )? pinfo->int32R_dist : pinfo->int32L_dist;
                    
            if( min != 0 && ( max / min ) < 2 )        
            {
                pinfo->int32turn_dir = LARGE_TURN | pinfo->int32turn_way;
                pinfo->int32turn_cnt = D_STR;

                if( mark_cnt )
                {
                    if( pinfo->int32dist > SHORT_DIST )
                    {
                        temp = pinfo->int32dist - ( int32_t )( g_q17user_vel * (float)( pinfo - 1 )->int32turn_cnt );
                        if( temp <= 0 )
                        {
                            temp = pinfo->int32dist;
                            ( pinfo - 1 )->int32turn_cnt = D_STR;    
                        }
                    }
                    else
                    {
                        temp = pinfo->int32dist;
                        ( pinfo - 1 )->int32turn_cnt = D_STR;        
                    }
                    pinfo->int32dist = temp;
                }
            }
            else
            {
                pinfo->int32turn_dir = TURN_270 | pinfo->int32turn_way;
                pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_270 : D_STR; 
            }
        }
        else
        {
            pinfo->int32turn_dir = TURN_270 | pinfo->int32turn_way;
            pinfo->int32turn_cnt = ( ( pinfo + 1 )->int32turn_way & STRAIGHT )? D_STR : D_STR;
        }
    }
    else
    {    
        pinfo->int32turn_dir = pinfo->int32turn_way;
    }
}

void speed_up_compute( race_info *p_info )
{
    race_info *pinfo = p_info;

    if( !g_Flag.speed_up_start ) return;
    
    g_int32speed_up_cnt ++;
    if( g_int32speed_up_cnt > ( pinfo + U16_turnmark_cnt - 1 )->int32turn_cnt  || !( U16_turnmark_cnt ) )
    { 
        // BLUE_ON;
        g_Flag.speed_up = ON;
        g_Flag.speed_up_start = OFF;
        g_int32speed_up_cnt = 0;
    }
}

static void speed_up_func( void )
{
    if(  g_Flag.stop_check || !g_Flag.motor )
        return;
    
    if( g_Flag.speed_up )
    {
        g_Flag.straight_run = ON;
        RMotor.iqTargetV = LMotor.iqTargetV = search_info[ U16_turnmark_cnt].iq7vel;
    }
}
