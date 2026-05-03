#include "rom.h"
#include <string.h>

// Mock SPI ROM for now (until actual Flash/EEPROM routines are integrated)
#define SIMULATED_EEPROM_SIZE 4096
static uint8_t simulated_eeprom[SIMULATED_EEPROM_SIZE] = {0};

void SpiWriteRom(uint16_t page, uint8_t addr, uint16_t len, uint16_t *buf)
{
    // Simulated EEPROM write
    uint32_t offset = (page * 16) + addr; // Simplified mapping
    if (offset + (len * 2) <= SIMULATED_EEPROM_SIZE) {
        memcpy(&simulated_eeprom[offset], buf, len * 2);
    }
}

void SpiReadRom(uint16_t page, uint8_t addr, uint16_t len, uint16_t *buf)
{
    // Simulated EEPROM read
    uint32_t offset = (page * 16) + addr;
    if (offset + (len * 2) <= SIMULATED_EEPROM_SIZE) {
        memcpy(buf, &simulated_eeprom[offset], len * 2);
    }
}

void maxmin_write_rom( void )
{
    uint32_t j = 0;
    uint16_t write_buf[ _MAXMIN_BLOCK ];
    memset( write_buf, 0x00, sizeof( write_buf ) );

    for (int i = 0; i < 16; i++) {
        uint32_t val = (uint32_t)(g_sen[i].iq17_4095_min_value);
        write_buf[ j++ ] = (uint16_t)((val >> 0) & 0xff);  
        write_buf[ j++ ] = (uint16_t)((val >> 8) & 0xff);
    }
    for (int i = 0; i < 16; i++) {
        uint32_t val = (uint32_t)(g_sen[i].iq17_4095_max_value);
        write_buf[ j++ ] = (uint16_t)((val >> 0) & 0xff);  
        write_buf[ j++ ] = (uint16_t)((val >> 8) & 0xff);
    }
    SpiWriteRom( (uint16_t)_MAXMIN_CTRL, 0, (uint16_t)_MAXMIN_BLOCK, write_buf );
}

void maxmin_read_rom( void )
{
    uint32_t j = 0;
    uint16_t read_buf[ _MAXMIN_BLOCK ];
    SpiReadRom( (uint16_t)_MAXMIN_CTRL, 0, (uint16_t)_MAXMIN_BLOCK, read_buf );

    for (int i = 0; i < 16; i++) {
        uint32_t val = 0;
        val = ((uint32_t)(read_buf[ j++ ] & 0xff) << 0);
        val |= ((uint32_t)(read_buf[ j++ ] & 0xff) << 8);
        g_sen[i].iq17_4095_min_value = (float)val;
    }
    for (int i = 0; i < 16; i++) {
        uint32_t val = 0;
        val = ((uint32_t)(read_buf[ j++ ] & 0xff) << 0);
        val |= ((uint32_t)(read_buf[ j++ ] & 0xff) << 8);
        g_sen[i].iq17_4095_max_value = (float)val;
    }
}

void read_vel_rom()
{
    uint16_t i = 0;
    uint16_t lead_vel[8] = {0};
    SpiReadRom((uint16_t)(VELOCITY_PAGE), 0x00, 8, lead_vel);
    g_u32_VEL_targetval = ((lead_vel[i++] & 0xff) << 0);
    g_u32_VEL_targetval |= ((lead_vel[i++] & 0xff ) << 8);
}

void write_vel_rom()
{
    uint16_t i = 0;
    uint16_t save_vel[8] = {0};
    save_vel[i++] = ((g_u32_VEL_targetval >> 0) & 0xff);
    save_vel[i++] = ((g_u32_VEL_targetval >> 8) & 0xff);
    SpiWriteRom((uint16_t)(VELOCITY_PAGE), 0x00, 8, save_vel);
}

void write_acc_rom()
{
    uint16_t i = 0;
    uint16_t save_acc[ 8 ] = {0};
    save_acc[i++] = ((g_u32_ACC_targetval >> 0) & 0xff);
    save_acc[i++] = ((g_u32_ACC_targetval >> 8) & 0xff);
    SpiWriteRom((uint16_t)(ACCEL_PAGE), 0x00, 8, save_acc);
}

void read_acc_rom()
{
    uint16_t i = 0;
    uint16_t lead_acc[8] = {0};
    SpiReadRom((uint16_t)(ACCEL_PAGE), 0x00, 8, lead_acc);
    g_u32_ACC_targetval = ((lead_acc[i++] & 0xff) << 0);
    g_u32_ACC_targetval |= ((lead_acc[i++] & 0xff) << 8);
}

void write_end_acc_rom()
{
    uint16_t i = 0;
    uint16_t save_acc[ 8 ] = {0};
    save_acc[i++] = ((g_u32_END_ACC_targetval >> 0) & 0xff);
    save_acc[i++] = ((g_u32_END_ACC_targetval >> 8) & 0xff);
    SpiWriteRom((uint16_t)(END_ACCEL_PAGE), 0x00, 8, save_acc);
}

void read_end_acc_rom()
{
    uint16_t i = 0;
    uint16_t lead_acc[8] = {0};
    SpiReadRom((uint16_t)(END_ACCEL_PAGE), 0x00, 8, lead_acc);
    g_u32_END_ACC_targetval = ((lead_acc[i++] & 0xff) << 0);
    g_u32_END_ACC_targetval |= ((lead_acc[i++] & 0xff) << 8);
}

void write_mark_cnt_rom( void )
{
    uint16_t mark_sarr[2] = {0};
    mark_sarr[0] = (((uint16_t)U16_turnmark_cnt - 1) >> 0) & 0xff;
    mark_sarr[1] = (((uint16_t)U16_turnmark_cnt - 1) >> 8) & 0xff;
    SpiWriteRom((uint16_t)MARK_PAGE, 0x00, 2, mark_sarr);
}

void read_mark_cnt_rom( void )
{
    uint16_t mark_larr[2] = {0};
    SpiReadRom((uint16_t)MARK_PAGE, 0x00, 2, mark_larr);
    g_int32total_cnt = (int32_t)((mark_larr[0] & 0xff) << 0);
    g_int32total_cnt |= (int32_t)((mark_larr[1] & 0xff) << 8);
}

void write_line_info_rom(void)
{
    int16_t i = 0, j = 0, k = 0, l = 0, m = 0, n = 0;
   
    uint16_t dist_sarr[ LINE_INFO ] = { 0 };
    uint16_t turn_sarr[ LINE_INFO ] = { 0 };
    uint16_t ldist_sarr[ LINE_INFO ] = { 0 };
    uint16_t rdist_sarr[ LINE_INFO ] = { 0 };
    uint16_t cross_sarr[ LINE_INFO ] = { 0 };

    j = k = l = m = n = 0;
	
    for(i=0; i<=U16_turnmark_cnt; i++)
    {
        dist_sarr[j++] = ((uint16_t)(search_info[i].int32dist) >> 0) & 0xff;
        turn_sarr[k++] = ((uint16_t)(search_info[i].int32turn_way) >> 0) & 0xff;
		ldist_sarr[l++] = ((uint16_t)(search_info[i].int32L_dist) >> 0) &  0xff;
        rdist_sarr[m++] = ((uint16_t)(search_info[i].int32R_dist) >> 0) & 0xff;
        cross_sarr[n++] = ((uint16_t)(search_info[i].int32cross_check_dist) >> 0) & 0xff;
    }
	SpiWriteRom( ( uint16_t )LINE_DDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, dist_sarr );
	SpiWriteRom( ( uint16_t )LINE_TURN_PAGE_1, 0x00, ( uint16_t )LINE_INFO, turn_sarr );
    SpiWriteRom( ( uint16_t )LINE_LDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, ldist_sarr );
    SpiWriteRom( ( uint16_t )LINE_RDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, rdist_sarr );
	SpiWriteRom( ( uint16_t )LINE_CDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, cross_sarr );
    
    j = k = l = m = n = 0;
    for(i=0; i <= U16_turnmark_cnt; i++)
    {
		dist_sarr[j++] = ((uint16_t)(search_info[i].int32dist) >> 8) & 0xff;
        turn_sarr[k++] = ((uint16_t)(search_info[i].int32turn_way) >> 8) & 0xff;
        ldist_sarr[l++] = ((uint16_t)(search_info[i].int32L_dist) >> 8) & 0xff;
    	rdist_sarr[m++] = ((uint16_t)(search_info[i].int32R_dist) >> 8) & 0xff;
        cross_sarr[n++] = ((uint16_t)(search_info[i].int32cross_check_dist) >> 8) & 0xff;
    }	
		  
    SpiWriteRom( ( uint16_t )LINE_DDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, dist_sarr );
    SpiWriteRom( ( uint16_t )LINE_TURN_PAGE_2, 0x00, ( uint16_t )LINE_INFO, turn_sarr );
	SpiWriteRom( ( uint16_t )LINE_LDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, ldist_sarr );
    SpiWriteRom( ( uint16_t )LINE_RDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, rdist_sarr );
    SpiWriteRom( ( uint16_t )LINE_CDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, cross_sarr );
}

void read_line_info_rom(void)
{
    int16_t i = 0, j = 0, k = 0, l = 0, m = 0, n = 0;
	
	uint16_t dist_larr[ MAX_PAGE ] = { 0 };
	uint16_t turn_larr[ MAX_PAGE ] = { 0 };
	uint16_t ldist_larr[ MAX_PAGE ] = { 0 };
	uint16_t rdist_larr[ MAX_PAGE ] = { 0 };
	uint16_t cross_larr[ MAX_PAGE ] = { 0 };
    
    SpiReadRom( ( uint16_t )LINE_DDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, dist_larr );
    SpiReadRom( ( uint16_t )LINE_TURN_PAGE_1, 0x00, ( uint16_t )LINE_INFO, turn_larr );
    SpiReadRom( ( uint16_t )LINE_LDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, ldist_larr );
	SpiReadRom( ( uint16_t )LINE_RDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, rdist_larr );
	SpiReadRom( ( uint16_t )LINE_CDIST_PAGE_1, 0x00, ( uint16_t )LINE_INFO, cross_larr );
	read_mark_cnt_rom();

    j = k = l = m = n = 0;
    for(i=0; i<=g_int32total_cnt; i++)
    { 
        search_info[j++].int32dist = (uint32_t)((dist_larr[i] & 0xff) << 0);
        search_info[k++].int32turn_way = (int32_t)((turn_larr[i] & 0xff) << 0);
        search_info[l++].int32L_dist = (int32_t)((ldist_larr[i] & 0xff) << 0);
        search_info[m++].int32R_dist= (int32_t)((rdist_larr[i] & 0xff) << 0);
        search_info[n++].int32cross_check_dist = (int32_t)((cross_larr[i] & 0xff) << 0);
    }
    
	SpiReadRom( ( uint16_t )LINE_DDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, dist_larr );
    SpiReadRom( ( uint16_t )LINE_TURN_PAGE_2, 0x00, ( uint16_t )LINE_INFO, turn_larr );
	SpiReadRom( ( uint16_t )LINE_LDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, ldist_larr);
	SpiReadRom( ( uint16_t )LINE_RDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, rdist_larr );
    SpiReadRom( ( uint16_t )LINE_CDIST_PAGE_2, 0x00, ( uint16_t )LINE_INFO, cross_larr );
    
    j = k = l = m = n = 0;
    for(i=0; i<=g_int32total_cnt; i++)
    { 
        search_info[j++].int32dist |= (uint32_t)((dist_larr[i] & 0xff) << 8);
        search_info[k++].int32turn_way |= (int32_t)((turn_larr[i] & 0xff) << 8);
		search_info[l++].int32L_dist |= (int32_t)((ldist_larr[i] & 0xff) << 8);
		search_info[m++].int32R_dist |= (int32_t)((rdist_larr[i] & 0xff) << 8);
        search_info[n++].int32cross_check_dist |= (int32_t)((cross_larr[i] & 0xff) << 8);
    }
}

void write_acc_handle_rom()
{
    uint16_t i = 0;
    uint16_t save_acc[8] = {0};
    save_acc[i++] = ((g_i16_handle_acc >> 0) & 0xff);
    save_acc[i++] = ((g_i16_handle_acc >> 8) & 0xff);
    SpiWriteRom((uint16_t)(HANDLE_ACC_PAGE), 0x00, 8, save_acc);
}

void read_handle_acc_rom()
{
    uint16_t i = 0;
    uint16_t lead_acc[8] = {0};
    SpiReadRom((uint16_t)(HANDLE_ACC_PAGE), 0x00, 8, lead_acc);
    g_i16_handle_acc = ((lead_acc[i++] & 0xff) << 0);
    g_i16_handle_acc |= ((lead_acc[i++] & 0xff) << 8);
}

void write_dec_handle_rom()
{
    uint16_t i = 0;
    uint16_t save_dec[8] = {0};
    save_dec[i++] = ((g_i16_handle_dec >> 0) & 0xff);
    save_dec[i++] = ((g_i16_handle_dec >> 8) & 0xff);
    SpiWriteRom((uint16_t)(HANDLE_DEC_PAGE), 0x00, 8, save_dec);
}

void read_handle_dec_rom()
{
    uint16_t i = 0;
    uint16_t lead_dec[8] = {0};
    SpiReadRom((uint16_t)(HANDLE_DEC_PAGE), 0x00, 8, lead_dec);
    g_i16_handle_dec = ((lead_dec[i++] & 0xff) << 0);
    g_i16_handle_dec |= ((lead_dec[i++] & 0xff) << 8);
}
