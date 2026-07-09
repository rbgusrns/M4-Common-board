# 라인트레이서 센서부 설계 문서

이 문서는 현재 코드 기준의 센서 스캔 구조를 설명한다. 예전 ADC DMA 기반 설계나 `sensor_scan_poll()` 기반 프레임 처리 흐름은 현재 코드에 남아 있지 않다.

## 1. 시스템 개요

- MCU: `STM32G474VET6`
- 센서: 수광 센서 16개, 발광 LED 16개
- 스캔 방식: 발광 LED 2개를 한 묶음으로 켜는 8스텝 순차 스캔
- 주요 코드: `Core/Src/adc.c`, `Core/Src/tim.c`, `Core/Src/sensor.c`, `Core/Inc/sensor.h`

현재 센서 ADC 경로는 **ADC DMA를 사용하지 않는다.** ADC1/ADC2를 TIM2 TRGO로 동시에 변환시키고, ADC2 EOC 인터럽트에서 ADC1/ADC2의 DR 값을 LL API로 직접 읽는다.

OLED 화면 전송은 별도 경로이며, I2C2를 LL blocking write 방식으로 사용한다.

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

- ADC1/ADC2 모두 `LL_ADC_REG_TRIG_EXT_TIM2_TRGO`
- ADC1/ADC2 모두 `LL_ADC_REG_SEQ_DISCONT_1RANK`
- ADC1/ADC2 모두 `LL_ADC_REG_DMA_TRANSFER_NONE`
- ADC1/ADC2 global IRQ priority: `0`

현재 코드의 실제 흐름은 다음과 같다.

1. `sensor_scan_start()`가 TIM2와 ADC를 정지하고 카운터/플래그를 초기화한다.
2. ADC1/ADC2 캘리브레이션을 수행한다.
3. `g_scan_step`, `g_adc_step`을 0으로 초기화한다.
4. `sensor_set_active_step(0)`으로 첫 LED 스텝을 켠다.
5. ADC1/ADC2 OVR 인터럽트와 ADC2 EOC 인터럽트를 켠 뒤 `LL_ADC_REG_StartConversion()`으로 두 ADC를 시작한다.
6. TIM2 CH2 PWM을 시작해 TRGO를 발생시킨다.
7. `ADC1_2_IRQHandler()`가 `sensor_adc_irq_handler()`를 호출하고, ADC2 EOC 시 ADC1/ADC2 DR 값을 읽어 `g_sen[]`에 저장한다.
8. 현재 LED를 끄고, 정규화 값과 ON/OFF 상태를 즉시 갱신한다.
9. 모터 타임베이스 처리를 수행한 뒤 다음 스텝 LED를 켠다.

중요한 차이: 현재 `TIM2_IRQHandler()`는 `sensor_tim2_irq_handler()`를 호출해 UPDATE/CC2 플래그만 클리어한다. 문서나 이전 설계에서 말하던 "TIM2 Update IRQ에서 LED ON" 흐름은 현재 구현과 다르다.

## 4. 런타임 데이터 처리

ADC2 EOC 인터럽트에서 다음 값을 즉시 갱신한다.

- `g_sen[idx].fp32_4095_value`
- `g_sen[idx].fp32_127_value`
- `g_sen[idx].fp32_on_off_value`
- `g_pos.u16state`
- `g_Flag.lineout_flag`
- `g_u32_isr_cnt`

현재 코드에는 별도의 `g_frame_ready` 플래그나 `sensor_scan_poll()` 흐름이 없다. full-frame 완료 후 한 번에 후처리하는 구조가 아니라, 각 ADC 완료 인터럽트에서 해당 스텝의 두 센서를 바로 처리한다.

## 5. 에러 복구

`sensor_adc_irq_handler()`는 ADC1/ADC2 ISR의 OVR 비트를 직접 확인한다. 오버런이 감지되면 `sensor_adc_recover_from_error()`가 다음을 수행한다.

1. TIM2 트리거를 정지한다.
2. ADC1/ADC2 변환과 ADC를 정지한다.
3. ADC1/ADC2의 EOC/EOS/OVR 플래그를 클리어한다.
4. `g_adc_step`, `g_scan_step`을 0으로 초기화하고 첫 LED 스텝을 켠다.
5. ADC1/ADC2를 ready 상태로 다시 enable한다.
6. ADC1/ADC2 변환과 TIM2 트리거를 다시 시작한다.

주의: 전체 재캘리브레이션은 `sensor_scan_start()`에서 수행한다. 오버런 복구 루틴은 빠른 재동기화를 위해 ADC ready enable과 트리거 재시작까지만 수행한다.

## 6. OLED와 I2C2

센서 ADC 경로와 별개로 OLED 전송은 I2C2 LL blocking write를 사용한다.

- 실제 호출: `OLED_I2C_Write()`

현재 OLED 전송 루틴은 `LL_I2C_HandleTransfer()`, `LL_I2C_TransmitData8()`, I2C 플래그 polling으로 전송을 끝낸다. I2C2 DMA 채널은 CubeMX 설정에서도 제거되어 현재 코드에서는 DMA를 사용하지 않는다.

## 7. 현재 확인해야 할 항목

- 실보드에서 TIM2 TRGO 주기와 ADC 변환 시점 확인
- LED ON/OFF 타이밍 확인
- `g_sen[0]`~`g_sen[15]` 물리 센서 좌우 매핑 확인
- `F_4095()` / `F_127()` 메뉴에서 raw/정규화 값 확인
- 현재 CMake 소스 목록과 실제 파일명 일치 여부 확인
