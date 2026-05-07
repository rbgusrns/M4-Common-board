# 프로젝트 진행상황

## 개요

- 프로젝트: `M4_STEP`
- 대상 MCU: `STM32G474VET6`
- 현재 큰 작업 방향: 기존 `_Viper_` 기반 구조를 STM32G474 + CubeMX 구조에 맞게 이관/정리

---

## 현재까지 확인한 내용

### 1. 코드 구조 상태

- `Core/Src`, `Core/Inc` 기준으로 애플리케이션 코드가 구성되어 있음
- `search.c`, `fastrun.c` 쪽 주행 알고리즘은 `g_sen[]`, `g_pos`, `g_shift`, `g_lmark/g_rmark` 같은 추상화된 변수 중심으로 동작함
- 따라서 주행 알고리즘 자체보다 **센서 수집 경로(TIM/ADC/DMA/GPIO)** 복구가 우선이라고 판단함

### 2. 센서 설계 문서 확인

- `sensor_system_design.md` 기준 설계는 다음과 같음
  - 16채널 센서
  - 8 step 순차 스캔
  - `25us` 주기 타이머 사용
  - step 시작 시 LED ON
  - `12.5us` 시점에 ADC 2개 소프트웨어 트리거
  - DMA 완료 후 LED OFF
  - 8 step 완료 후 full-frame 처리

### 3. 초기 코드 상태에서 확인된 문제

- `sensor.h`에는 새 STM32 구조용 선언이 있었지만 실제 구현이 비어 있었음
  - `scan_table`
  - `g_dma_done_flags`
  - `g_adc_buf_hi`, `g_adc_buf_lo`
  - `g_scan_step`
  - `sensor_scan_start()`
- TIM2 / DMA / ADC 초기화는 CubeMX로 생성되어 있었지만
  - 타이머 시작 코드 없음
  - ADC DMA 시작 코드 없음
  - HAL 콜백 연결 없음
- `sensor_check_127()`는 있었지만 호출 경로가 없었음
- `iq17_ON_OFF_value`를 실제로 갱신하는 코드가 없어 `search.c`의 일부 legacy 판단식이 끊겨 있었음

---

## 이번 작업에서 반영한 내용

### 1. 센서 스캔 엔진 구현

`Core/Src/sensor.c`에 아래를 구현함.

- 8-step `scan_table` 정의
- step별 LED / ADC pair / 센서 index 매핑 추가
- `g_dma_done_flags`, `g_adc_buf_hi`, `g_adc_buf_lo`, `g_scan_step` 정의
- LED 전체 OFF helper 추가
- ADC 채널 step별 재설정 helper 추가

### 2. 인터럽트/콜백 흐름 연결

아래 흐름으로 동작하도록 연결함.

1. `TIM2 Update IRQ` 시 현재 step LED ON 및 ADC 채널 준비
2. `TIM2 CH2 OC IRQ` 시 ADC 2개 `HAL_ADC_Start_DMA()` 실행
3. `HAL_ADC_ConvCpltCallback()`에서 hi/lo raw 데이터 저장
4. 두 DMA가 모두 끝나면 해당 step LED OFF
5. 8 step 완료 시 full-frame 완료 처리
6. full-frame 완료 시 `sensor_check_127()` 실행
7. 처리 완료 후 `g_int32_isr_cnt++`

### 3. 기존 알고리즘 연동 유지

- `make_position()` / `Handle()` / `turn_decide()` / `search_race()` / `fast_race()`는 최대한 유지함
- 센서 수집층만 STM32 구조에 맞게 연결하고, 상위 주행 알고리즘은 그대로 사용하도록 유지함
- `sensor_check_127()` 내부에서 `iq17_ON_OFF_value`도 함께 갱신하도록 반영함

### 4. 부팅 시 초기화 연결

`Core/Src/main.c`에서 아래 순서로 시작되도록 연결함.

1. CubeMX peripheral init
2. `sen_vari_init()`
3. `sensor_scan_start()`
4. `menu_start()`

### 5. 기타 정리

- 센서 LED 출력 GPIO 속도를 high로 변경
- ADC3는 현재 사용자 쪽에서 다시 수정한 상태 기준으로 봄
- `iqmath_compat.h`, `i2c_sw.c`는 현재 프로젝트에 없는 파일로 정리함
- CMake에 실제 `Core/Src` 애플리케이션 소스들이 빌드되도록 반영함

---

## 빌드 상태

현재 `cmake --build --preset Debug` 빌드 성공.

- RAM 사용량: `22640 B`
- FLASH 사용량: `55684 B`

즉, 코드 수정 후 최소한 **정적 빌드 관점에서는 정상 컴파일/링크 완료** 상태임.

---

## 현재 남아 있는 실기 검증 항목

### 1. 타이밍 검증

실보드에서 아래 확인 필요.

- TIM2가 실제로 `25us` 주기로 도는지
- LED ON 후 약 `12.5us` 시점에 ADC가 시작되는지
- DMA 2개 완료 후 LED OFF 되는지

### 2. 센서 순서/좌우 방향 검증

- 코드상의 스캔 순서와 `g_sen[0] ~ g_sen[15]` 매핑은 `scan_table` 정의를 통해 확정됨
- 실제 보드에서의 물리적 센서 배치와 코드상 index의 일치 여부(좌우 반전 등)만 실기 검증 필요
- 좌/우 반전 확인 시 `make_position()` 결과 부호가 의도와 맞는지 확인

### 3. 센서 raw / 정규화 값 검증

메뉴 기반으로 아래 확인 필요.

- `F_4095()`에서 raw 값 변화 확인
- `F_127()`에서 정규화 값 변화 확인
- 흑/백 바닥에 따라 hysteresis 판정이 기대대로 되는지 확인

### 4. 주행 전 최종 확인

- `g_int32_isr_cnt`가 full-frame 단위로 잘 증가하는지
- `search.c`, `fastrun.c`가 새 센서 데이터로 정상 동작하는지
- line-out 판단이 의도대로 동작하는지

---

## 현재까지의 판단

지금 단계에서는 **주행 알고리즘을 크게 고치는 것보다 센서 수집층을 STM32 구조에 맞게 붙이는 작업이 핵심**이었고, 그 작업은 코드상으로 일단 완료된 상태임.

다음 핵심 단계는 리팩터링이 아니라 **실보드 타이밍/매핑 검증**이다.

---

## 추천 다음 단계

1. 오실로스코프로 LED pin + 디버그 pin 관측
2. `F_4095()` / `F_127()`로 센서 데이터 흐름 확인
3. 센서 좌우 방향 및 index 매핑 점검
4. 저속 주행으로 `make_position()` / line detect / line out 검증
