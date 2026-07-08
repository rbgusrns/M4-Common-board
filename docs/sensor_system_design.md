# 라인트레이서 센서부 설계 문서

이 문서는 현재 코드 기준의 센서 스캔 구조를 설명한다. 예전 ADC DMA 기반 설계나 `sensor_scan_poll()` 기반 프레임 처리 흐름은 현재 코드에 남아 있지 않다.

## 1. 시스템 개요

- MCU: `STM32G474VET6`
- 센서: 수광 센서 16개, 발광 LED 16개
- 스캔 방식: 발광 LED 2개를 한 묶음으로 켜는 8스텝 순차 스캔
- 주요 코드: `Core/Src/adc.c`, `Core/Src/tim.c`, `Core/Src/sensor.c`, `Core/Inc/sensor.h`

현재 센서 ADC 경로는 **ADC DMA를 사용하지 않는다.** ADC1/ADC2를 TIM2 TRGO로 동시에 변환시키고, ADC2 변환 완료 콜백에서 ADC1/ADC2의 DR 값을 직접 읽는다.

OLED 화면 전송은 별도 경로이며, I2C2 TX DMA를 사용한다.

## 2. 센서 매핑

### 발광 LED 스텝

핀 1개가 LED 2개를 동시에 켠다. `scan_table`은 현재 스텝의 발광 핀과 저장할 센서 인덱스를 함께 정의한다.

| Step | 발광핀 | ADC1 저장 인덱스 | ADC2 저장 인덱스 |
|---|---|---:|---:|
| 0 | L0 (PC14) | 0 | 8 |
| 1 | L1 (PC15) | 1 | 9 |
| 2 | L2 (PF9) | 2 | 10 |
| 3 | L3 (PF10) | 3 | 11 |
| 4 | L4 (PF1) | 4 | 12 |
| 5 | L5 (PC0) | 5 | 13 |
| 6 | L6 (PC1) | 6 | 14 |
| 7 | L7 (PC2) | 7 | 15 |

코드 위치: `Core/Src/sensor.c`의 `scan_table`.

### ADC 채널 순서

ADC1은 `g_sen[0]`부터 `g_sen[7]`까지, ADC2는 `g_sen[8]`부터 `g_sen[15]`까지 저장한다.

| Rank | ADC1 채널 | ADC2 채널 |
|---|---|---|
| 1 | IN1 | IN3 |
| 2 | IN2 | IN4 |
| 3 | IN3 | IN5 |
| 4 | IN4 | IN11 |
| 5 | IN5 | IN12 |
| 6 | IN9 | IN13 |
| 7 | IN11 | IN14 |
| 8 | IN12 | IN15 |

코드 위치: `Core/Src/adc.c`의 `MX_ADC1_Init()`, `MX_ADC2_Init()`.

## 3. 타이밍 구조

TIM2 설정은 다음과 같다.

- Prescaler: `84`
- Period: `49`
- TRGO: `TIM_TRGO_OC2REF`
- CH2 PWM pulse: `25`
- TIM2 IRQ priority: `1`

ADC 설정은 다음과 같다.

- ADC1/ADC2 모두 `ExternalTrigConv = ADC_EXTERNALTRIG_T2_TRGO`
- ADC1/ADC2 모두 `DiscontinuousConvMode = ENABLE`
- ADC1/ADC2 모두 `NbrOfDiscConversion = 1`
- ADC1/ADC2 모두 `DMAContinuousRequests = DISABLE`
- ADC1/ADC2 global IRQ priority: `0`

현재 코드의 실제 흐름은 다음과 같다.

1. `sensor_scan_start()`가 TIM2와 ADC를 정지하고 카운터/플래그를 초기화한다.
2. ADC1/ADC2 캘리브레이션을 수행한다.
3. `g_scan_step`, `g_adc_step`을 0으로 초기화한다.
4. `sensor_set_active_step(0)`으로 첫 LED 스텝을 켠다.
5. ADC1은 `HAL_ADC_Start()`, ADC2는 `HAL_ADC_Start_IT()`로 시작한다.
6. TIM2 CH2 PWM을 시작해 TRGO를 발생시킨다.
7. ADC2 변환 완료 콜백에서 ADC1/ADC2 DR 값을 읽어 `g_sen[]`에 저장한다.
8. 현재 LED를 끄고, 정규화 값과 ON/OFF 상태를 즉시 갱신한다.
9. 모터 타임베이스 처리를 수행한 뒤 다음 스텝 LED를 켠다.

중요한 차이: 현재 `HAL_TIM_PeriodElapsedCallback()`은 TIM2에 대해 아무 작업도 하지 않는다. 문서나 이전 설계에서 말하던 "TIM2 Update IRQ에서 LED ON" 흐름은 현재 구현과 다르다.

## 4. 런타임 데이터 처리

ADC2 완료 콜백에서 다음 값을 즉시 갱신한다.

- `g_sen[idx].iq17_4095_value`
- `g_sen[idx].iq17_127_value`
- `g_sen[idx].iq17_ON_OFF_value`
- `g_pos.u16state`
- `g_Flag.lineout_flag`
- `g_int32_isr_cnt`

현재 코드에는 별도의 `g_frame_ready` 플래그나 `sensor_scan_poll()` 흐름이 없다. full-frame 완료 후 한 번에 후처리하는 구조가 아니라, 각 ADC 완료 인터럽트에서 해당 스텝의 두 센서를 바로 처리한다.

## 5. 에러 복구

`HAL_ADC_ErrorCallback()`은 ADC 오버런이 감지되면 다음을 수행한다.

1. ADC1/ADC2의 OVR 플래그를 클리어한다.
2. ADC 상태를 `HAL_ADC_STATE_READY`로 되돌린다.
3. `g_adc_step`을 0으로 초기화한다.
4. ADC1/ADC2를 다시 시작한다.

주의: 에러 복구 루틴은 ADC만 재시작한다. TIM2를 완전히 정지/리셋한 뒤 다시 동기화하는 전체 재시작은 `sensor_scan_start()`에서 수행한다.

## 6. OLED와 DMA

센서 ADC 경로와 별개로 OLED 전송은 I2C2 TX DMA를 사용한다.

- I2C2 RX: `DMA1_Channel6`
- I2C2 TX: `DMA1_Channel7`
- DMA IRQ priority: `10`
- 실제 호출: `HAL_I2C_Master_Transmit_DMA()`

현재 `OLED_EnterCritical()` / `OLED_ExitCritical()`은 실질적인 인터럽트 마스킹을 하지 않는다. 예전 문서에 있던 `BASEPRI` 기반 크리티컬 섹션은 현재 코드에 없다.

## 7. 현재 확인해야 할 항목

- 실보드에서 TIM2 TRGO 주기와 ADC 변환 시점 확인
- LED ON/OFF 타이밍 확인
- `g_sen[0]`~`g_sen[15]` 물리 센서 좌우 매핑 확인
- `F_4095()` / `F_127()` 메뉴에서 raw/정규화 값 확인
- 현재 CMake 소스 목록과 실제 파일명 일치 여부 확인
