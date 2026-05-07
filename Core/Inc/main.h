/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define L7_Pin GPIO_PIN_14
#define L7_GPIO_Port GPIOC
#define L6_Pin GPIO_PIN_15
#define L6_GPIO_Port GPIOC
#define L5_Pin GPIO_PIN_9
#define L5_GPIO_Port GPIOF
#define L4_Pin GPIO_PIN_10
#define L4_GPIO_Port GPIOF
#define L3_Pin GPIO_PIN_1
#define L3_GPIO_Port GPIOF
#define L2_Pin GPIO_PIN_0
#define L2_GPIO_Port GPIOC
#define L1_Pin GPIO_PIN_1
#define L1_GPIO_Port GPIOC
#define L0_Pin GPIO_PIN_2
#define L0_GPIO_Port GPIOC
#define Q15_Pin GPIO_PIN_0
#define Q15_GPIO_Port GPIOA
#define Q14_Pin GPIO_PIN_1
#define Q14_GPIO_Port GPIOA
#define Q13_Pin GPIO_PIN_2
#define Q13_GPIO_Port GPIOA
#define Q12_Pin GPIO_PIN_3
#define Q12_GPIO_Port GPIOA
#define Q11_Pin GPIO_PIN_6
#define Q11_GPIO_Port GPIOA
#define Q10_Pin GPIO_PIN_7
#define Q10_GPIO_Port GPIOA
#define Q9_Pin GPIO_PIN_4
#define Q9_GPIO_Port GPIOC
#define Q8_Pin GPIO_PIN_1
#define Q8_GPIO_Port GPIOB
#define Q6_Pin GPIO_PIN_7
#define Q6_GPIO_Port GPIOE
#define Q5_Pin GPIO_PIN_15
#define Q5_GPIO_Port GPIOB
#define Q4_Pin GPIO_PIN_8
#define Q4_GPIO_Port GPIOD
#define Q3_Pin GPIO_PIN_9
#define Q3_GPIO_Port GPIOD
#define Q2_Pin GPIO_PIN_10
#define Q2_GPIO_Port GPIOD
#define Q1_Pin GPIO_PIN_11
#define Q1_GPIO_Port GPIOD
#define Q0_Pin GPIO_PIN_12
#define Q0_GPIO_Port GPIOD
#define SW_R_Pin GPIO_PIN_15
#define SW_R_GPIO_Port GPIOD
#define SW_L_Pin GPIO_PIN_6
#define SW_L_GPIO_Port GPIOC
#define SW_D_Pin GPIO_PIN_7
#define SW_D_GPIO_Port GPIOC
#define SW_U_Pin GPIO_PIN_8
#define SW_U_GPIO_Port GPIOC
#define LA_Pin GPIO_PIN_15
#define LA_GPIO_Port GPIOA
#define LA__Pin GPIO_PIN_10
#define LA__GPIO_Port GPIOC
#define LB_Pin GPIO_PIN_11
#define LB_GPIO_Port GPIOC
#define LB__Pin GPIO_PIN_12
#define LB__GPIO_Port GPIOC
#define RA_Pin GPIO_PIN_0
#define RA_GPIO_Port GPIOD
#define RA__Pin GPIO_PIN_1
#define RA__GPIO_Port GPIOD
#define RB_Pin GPIO_PIN_2
#define RB_GPIO_Port GPIOD
#define RB__Pin GPIO_PIN_3
#define RB__GPIO_Port GPIOD
#define SPI1_CS_Pin GPIO_PIN_7
#define SPI1_CS_GPIO_Port GPIOD

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
