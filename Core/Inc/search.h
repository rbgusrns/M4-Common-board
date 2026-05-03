/**
  ******************************************************************************
  * @file    search.h
  * @brief   First race (search run) logic
  *
  * @note    Ported from search.h/_Viper_ (TMS320F2809)
  ******************************************************************************
  */

#ifndef __SEARCH_H__
#define __SEARCH_H__

#include "viper_variable.h"

void Race_Init(void);
void search_race(void);
void F_1st_run(void);
void MARKCHECKING(void);
int  lineout(void);
int  race_stop_check(void);

#endif /* __SEARCH_H__ */
