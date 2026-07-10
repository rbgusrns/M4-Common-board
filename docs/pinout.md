# M4_STEP 핀맵 (Pinout)

신뢰 가능한 소스 (Source of Truth): `M4_STEP.ioc`, `Core/Inc/main.h`, `Core/Src/sensor.c`

## 센서 ADC 입력

| 센서 | MCU 핀 | ADC 채널 |
| --- | --- | --- |
| Q0 | PA0 | ADC1_IN1 |
| Q1 | PA1 | ADC1_IN2 |
| Q2 | PA2 | ADC1_IN3 |
| Q3 | PA3 | ADC1_IN4 |
| Q4 | PB14 | ADC1_IN5 |
| Q5 | PC3 | ADC1_IN9 |
| Q6 | PB12 | ADC1_IN11 |
| Q7 | PB1 | ADC1_IN12 |
| Q8 | PA6 | ADC2_IN3 |
| Q9 | PA7 | ADC2_IN4 |
| Q10 | PC4 | ADC2_IN5 |
| Q11 | PC5 | ADC2_IN11 |
| Q12 | PB2 | ADC2_IN12 |
| Q13 | PA5 | ADC2_IN13 |
| Q14 | PB11 | ADC2_IN14 |
| Q15 | PB15 | ADC2_IN15 |

## 센서 LED 스캔 출력


| 단계 (Step) | LED | MCU 핀 | ADC1 센서 | ADC2 센서 |
| --- | --- | --- | --- | --- |
| 0 | L0 | PC14 | Q0 | Q8 |
| 1 | L1 | PC15 | Q1 | Q9 |
| 2 | L2 | PF9 | Q2 | Q10 |
| 3 | L3 | PF10 | Q3 | Q11 |
| 4 | L4 | PF1 | Q4 | Q12 |
| 5 | L5 | PC0 | Q5 | Q13 |
| 6 | L6 | PC1 | Q6 | Q14 |
| 7 | L7 | PC2 | Q7 | Q15 |

## 스텝 모터 출력

| 신호 | MCU 핀 | 비고 |
| --- | --- | --- |
| LA | PC11 | 왼쪽 모터 A상 (Left motor phase A) |
| LA' | PC12 | 왼쪽 모터 A상 반전 (Left motor phase A inverted) |
| LB | PC9 | 왼쪽 모터 B상 (Left motor phase B) |
| LB' | PC10 | 왼쪽 모터 B상 반전 (Left motor phase B inverted) |
| RA | PD0 | 오른쪽 모터 A상 (Right motor phase A) |
| RA' | PD1 | 오른쪽 모터 A상 반전 (Right motor phase A inverted) |
| RB | PD2 | 오른쪽 모터 B상 (Right motor phase B) |
| RB' | PD3 | 오른쪽 모터 B상 반전 (Right motor phase B inverted) |

## 스위치 입력

스위치는 Active-Low 방식으로 동작. 누르면 `0`, 떼면 `1`이 입력.

| 스위치 | MCU 핀 |
| --- | --- |
| SW_U | PC8 |
| SW_D | PC7 |
| SW_L | PC6 |
| SW_R | PD15 |

## ROM / 데이터플래시 SPI

| 신호 | MCU 핀 | 주변장치 |
| --- | --- | --- |
| SCK | PB3 | SPI1_SCK |
| MISO | PB4 | SPI1_MISO |
| MOSI | PB5 | SPI1_MOSI |
| CS | PD7 | GPIO 출력, `SPI1_CS` |


| 명령어 | 값 | 설명 |
| --- | --- | --- |
| Status read | `0xD7` | 상태 레지스터 읽기 |
| Page program direct | `0x82` | 페이지 직접 쓰기 |
| Page read | `0xD2` | 페이지 읽기 |

## 디버그 / 디스플레이 인터페이스

| 기능 | 신호 | MCU 핀 | 비고 |
| --- | --- | --- | --- |
| 시리얼 모니터 | USART1_TX | PB6 | 115200 8-N-1 |
| 시리얼 모니터 | USART1_RX | PB7 | 115200 8-N-1 |
| OLED | I2C2_SDA | PA8 | OLED 장치가 없을 경우 시리얼 모니터로 대체 출력 |
| OLED | I2C2_SCL | PA9 | OLED 장치가 없을 경우 시리얼 모니터로 대체 출력 |
| SWD | SWDIO | PA13 | 디버그 핀 |
| SWD | SWCLK | PA14 | 디버그 핀 |

## 타이머 / ADC 트리거

| 항목 | 설정 | 설명 |
| --- | --- | --- |
| 타이머 | TIM2 | 하드웨어 스캔용 타이머 |
| 주기 (Period) | 25 us | 25 us 스캔 타이밍 주파수 |
| TRGO | TIM2 OC2REF | 트리거 출력 소스 |
| ADC 트리거 | TIM2 TRGO | TIM2 TRGO의 상승 에지(Rising edge)에서 ADC1/ADC2 외부분기 트리거 |
| ISR 분할 | 타이머/ADC ISR | TIM2 ISR은 `Sensor_Value()` 호출, ADC ISR은 `adc_timer_ISR()` 호출 |

TIM2 채널 2는 "PWM Generation2 No Output"으로 설정되어 있음. 이는 내부 트리거 전용 소스이며 물리적인 출력 핀으로 할당되지 않음.

## 클럭 및 기타 (Clock / Misc)

| 신호 | MCU 핀 | 비고 |
| --- | --- | --- |
| HSE 입력 | PF0 | 외부 클럭 소스 (External clock source) |
