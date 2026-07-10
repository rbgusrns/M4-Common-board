#include "fastrun.h"
#include "motor.h"
#include "sensor.h"
#include "oled.h"
#include "rom.h"
#include "search.h"
#include <math.h>

static void turn_division_func(void);
static void turn_division_compute(race_info *pinfo, int32_t mark);
static void straight_compute(race_info *pinfo, int32_t mark);
static void default_turn_compute(race_info *pinfo, int32_t mark);
static void speed_up_func(void);

void second_race()
{
    // StartCpuTimer0();
    OLED_Printf(0U, 0U, "_ _GO_ _");
    fast_race(search_info);
}

void fast_race(race_info *pinfo)
{
    LL_mDelay(100);
    read_line_info_rom();

    turn_info_func();
    turn_division_func();

    Race_Init();
    OLED_Printf(0U, 0U, "        ");

    g_Flag.second_race = ON;

    pinfo->int32accel = g_u32_ACC_targetval;

    move_to_move( (float)pinfo->int32dist, pinfo->fp32decel_dist, pinfo->fp32vel, pinfo->fp32out_vel, pinfo->int32accel);

    g_Flag.motor = ON;
    g_Flag.move_state = ON;
    // BLUE_ON;

    while(1)
    {
        make_position();
        Handle();

        if( g_Flag.move_state )
        {
            g_lmark.fp32turnmark_dist = g_rmark.fp32turnmark_dist = (RMotor.fp32turnmark_check_dist + LMotor.fp32turnmark_check_dist) * 0.5f;
            g_fp32_cross_dist = ( RMotor.fp32cross_check_dist + LMotor.fp32cross_check_dist ) * 0.5f;

            turn_decide(&g_lmark, &g_rmark);
            turn_decide(&g_rmark, &g_lmark);

            // if (pinfo->int32turn_way == STRAIGHT) BLUE_ON;
        }

        if( g_u32_isr_cnt )
        {
            if( line_out_func() || race_stop_check() ) return;

            speed_up_compute(pinfo);

            g_u32_isr_cnt = 0;
        }
    }
}

static void turn_division_func( void )
{
    int32_t i = 0;
    for( i = 0 ; i <= g_u32_total_cnt ; i ++ )
    {
        turn_division_compute( &search_info[ i ], i );
    }
}

void second_info(race_info *p_info)
{
    race_info *pinfo = p_info;

    g_u16_turnmark_cnt++;

    if( ( pinfo + g_u16_turnmark_cnt )->int32turn_dir & ( STRAIGHT | END_TURN ) )
        g_Flag.speed_up_start = ON;
    else
        g_Flag.straight_run = OFF;

    move_to_move( (float)( pinfo + g_u16_turnmark_cnt )->int32dist,
                  ( pinfo + g_u16_turnmark_cnt )->fp32decel_dist,
                  ( pinfo + g_u16_turnmark_cnt)->fp32vel,
                  ( pinfo + g_u16_turnmark_cnt)->fp32out_vel,
                  ( pinfo + g_u16_turnmark_cnt )->int32accel );

    speed_up_func();

    LMotor.fp32gone_dist = RMotor.fp32gone_dist = 0.0f;
    LMotor.fp32distance_sum = RMotor.fp32distance_sum = 0.0f;
}

static void turn_division_compute( race_info *pinfo, int32_t mark)
{
    if( ( pinfo->int32turn_dir & STRAIGHT ) || pinfo->int32turn_dir & END_TURN )
        straight_compute( pinfo , mark );
    else
        default_turn_compute( pinfo , mark );
}

static void straight_compute( race_info *pinfo, int32_t mark)
{
    volatile float big_vel = 0.0f;
    volatile float small_vel = 0.0f;

    pinfo->fp32in_vel = (mark > 0) ? ( pinfo - 1 )->fp32out_vel : 0.0f;

    if( !( pinfo->int32turn_dir & END_TURN ) )
    {
        turn_division_compute( ( pinfo + 1 ), ( mark + 1 ));
        pinfo->fp32out_vel = ( pinfo + 1 )->fp32in_vel;
    }
    else
    {
        pinfo->fp32out_vel = (float)g_u32_END_VEL_targetval;
        (pinfo + 1)->fp32in_vel = pinfo->fp32out_vel = (float)g_u32_END_VEL_targetval;
    }

    if( pinfo->int32dist > LONG_DIST )
    {
        pinfo->int32accel = g_i32_long_acc;
        if( pinfo->int32turn_dir & END_TURN )
            pinfo->int32accel = ( pinfo->int32accel > 3000 )? 3000 : g_i32_long_acc;
    }
    else if( pinfo->int32dist > MID_DIST )
        pinfo->int32accel = g_i32_mid_acc;
    else
        pinfo->int32accel = g_i32_short_acc;

    if( !mark && pinfo->int32accel > 5500 )
        pinfo->int32accel = 5000;
    else if( pinfo->int32turn_dir & END_TURN )
        pinfo->int32accel = 3000;

    big_vel = ( pinfo->fp32in_vel > pinfo->fp32out_vel )? pinfo->fp32in_vel : pinfo->fp32out_vel;
    small_vel = ( pinfo->fp32in_vel > pinfo->fp32out_vel )? pinfo->fp32out_vel : pinfo->fp32in_vel;

    decel_dist_compute( pinfo->fp32in_vel, pinfo->fp32out_vel, pinfo->int32accel, (float *)&pinfo->fp32motion_dist );

    if( pinfo->fp32motion_dist >= (float)( pinfo->int32dist ) )
    {
        pinfo->fp32decel_dist = (float)( pinfo->int32dist );
        max_vel_compute( (float)( pinfo->int32dist ), 0.0f, small_vel, pinfo->int32accel, (float *)&pinfo->fp32vel );

        if( pinfo->fp32in_vel > pinfo->fp32out_vel )  pinfo->fp32in_vel = pinfo->fp32vel;
        else                                        pinfo->fp32out_vel = pinfo->fp32vel;

        if( !mark )
            pinfo->fp32in_vel = 0.0f;
    }
    else
    {
        max_vel_compute( (float)( pinfo->int32dist ), pinfo->fp32motion_dist, big_vel, pinfo->int32accel, (float *)&pinfo->fp32vel );
        decel_dist_compute( pinfo->fp32vel, pinfo->fp32out_vel, pinfo->int32accel, (float *)&pinfo->fp32decel_dist );
    }
}

static void default_turn_compute( race_info *pinfo, int32_t mark)
{
    pinfo->int32accel = 3000;
    pinfo->fp32in_vel = (float)g_u32_VEL_targetval;
    pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;

    pinfo->int32accel = 3000;
    if(pinfo->int32turn_dir & TURN_45)
    {
        pinfo->fp32in_vel = (float)(g_u32_VEL_targetval > g_i32_turn_45_vel ? g_i32_turn_45_vel : g_u32_VEL_targetval);
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }
    else if(pinfo->int32turn_dir & TURN_90)
    {
        pinfo->fp32in_vel = (float)(g_u32_VEL_targetval > g_i32_turn_90_vel ? g_i32_turn_90_vel : g_u32_VEL_targetval);
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }
    else if(pinfo->int32turn_dir & TURN_180)
    {
        pinfo->fp32in_vel = (float)(g_u32_VEL_targetval > g_i32_turn_180_vel ? g_i32_turn_180_vel : g_u32_VEL_targetval);
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }
    else if(pinfo->int32turn_dir & TURN_270)
    {
        pinfo->fp32in_vel = (float)(g_u32_VEL_targetval > g_i32_turn_270_vel ? g_i32_turn_270_vel : g_u32_VEL_targetval);
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }
    else if(pinfo->int32turn_dir & LARGE_TURN)
    {
        pinfo->fp32in_vel = (float)(g_i32_turn_large_vel);
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }
    else
    {
        pinfo->fp32in_vel = (float)( g_u32_VEL_targetval );
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }

    if((pinfo->int32turn_dir >= TURN_180) && ((pinfo+1)->int32turn_dir >= TURN_180))
    {
        pinfo->int32accel = 3000;
        if(pinfo->fp32in_vel >= 2200.0f)
            pinfo->fp32in_vel = 2200.0f;

        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }
    else if(((pinfo-1)->int32turn_dir >= TURN_180) && (pinfo->int32turn_dir >= TURN_180))
    {
        pinfo->int32accel = 3000;
        if(pinfo->fp32in_vel >= 2200.0f)
            pinfo->fp32in_vel = 2200.0f;

        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
    }

    if(((pinfo-1)->int32turn_dir & STRAIGHT) && (pinfo->int32turn_dir >= TURN_90) && ((pinfo+1)->int32turn_dir & STRAIGHT))
    {
        pinfo->int32accel = 3000;
        if(pinfo->fp32in_vel >= 2200.0f)
            pinfo->fp32in_vel = 2200.0f;
        pinfo->fp32vel = pinfo->fp32out_vel = pinfo->fp32in_vel;
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
    for( i = 0; i <= g_u32_total_cnt; i++ )
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
                temp = pinfo->int32dist - ( int32_t )(( g_fp32_user_vel * (float)( pinfo - 1 )->int32turn_cnt ));

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
                        temp = pinfo->int32dist - ( int32_t )( g_fp32_user_vel * (float)( pinfo - 1 )->int32turn_cnt );
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

    g_i32_speed_up_cnt ++;
    if( g_i32_speed_up_cnt > ( pinfo + g_u16_turnmark_cnt - 1 )->int32turn_cnt  || !( g_u16_turnmark_cnt ) )
    {
        // BLUE_ON;
        g_Flag.speed_up = ON;
        g_Flag.speed_up_start = OFF;
        g_i32_speed_up_cnt = 0;
    }
}

static void speed_up_func( void )
{
    if(  g_Flag.stop_check || !g_Flag.motor )
        return;

    if( g_Flag.speed_up )
    {
        g_Flag.straight_run = ON;
        RMotor.fp32target_vel = LMotor.fp32target_vel = search_info[ g_u16_turnmark_cnt].fp32vel;
    }
}
