# 라인트레이서 센서부 설계 문서

## 1. 시스템 개요

STM32G474VET6를 사용한 라인트레이서의 16채널 광센서 스캔 시스템.  
수광센서 16개 + 발광센서 16개를 **8쌍으로 묶어 순차 스캔**하는 방식.

---

## 2. 하드웨어 구성

### 센서 배치

| 번호 | 위치 |
|---|---|
| 센서 0 | 가장 왼쪽 |
| 센서 15 | 가장 오른쪽 |

### 발광 제어 (ULN 구동)

핀 1개가 LED 2개를 동시에 켬. 총 8핀(L0~L7)으로 16개 발광 LED 제어.

| 발광 핀 | GPIO | 켜지는 센서 쌍 |
|---|---|---|
| L7 | PC14 | S7 + S15 |
| L6 | PC15 | S6 + S14 |
| L5 | PF9  | S5 + S13 |
| L4 | PF10 | S4 + S12 |
| L3 | PF1  | S3 + S11 |
| L2 | PC0  | S2 + S10 |
| L1 | PC1  | S1 + S9  |
| L0 | PC2  | S0 + S8  |

### 수광 센서 ADC 매핑

| 센서 번호 | ADC 채널 | GPIO |
|---|---|---|
| Q0  | ADC5_IN9  | PD12 |
| Q1  | ADC5_IN8  | PD11 |
| Q2  | ADC5_IN7  | PD10 |
| Q3  | ADC4_IN13 | PD9  |
| Q4  | ADC4_IN12 | PD8  |
| Q5  | ADC4_IN5  | PB15 |
| Q6  | ADC3_IN4  | PE7  |
| Q7  | ADC3_IN2  | PE9  |
| Q8  | ADC3_IN1  | PB1  |
| Q9  | ADC2_IN5  | PC4  |
| Q10 | ADC2_IN4  | PA7  |
| Q11 | ADC2_IN3  | PA6  |
| Q12 | ADC1_IN4  | PA3  |
| Q13 | ADC1_IN3  | PA2  |
| Q14 | ADC1_IN2  | PA1  |
| Q15 | ADC1_IN1  | PA0  |

### 스텝별 ADC 쌍 구성

| Step | 발광핀 | 센서 Hi | ADC Hi | 센서 Lo | ADC Lo |
|---|---|---|---|---|---|
| 0 | L7 (PC14) | S7 (Q7) | ADC3_IN2 | S15 (Q15) | ADC1_IN1 |
| 1 | L6 (PC15) | S6 (Q6) | ADC3_IN4 | S14 (Q14) | ADC1_IN2 |
| 2 | L5 (PF9)  | S5 (Q5) | ADC4_IN5 | S13 (Q13) | ADC1_IN3 |
| 3 | L4 (PF10) | S4 (Q4) | ADC4_IN12 | S12 (Q12) | ADC1_IN4 |
| 4 | L3 (PF1)  | S3 (Q3) | ADC4_IN13 | S11 (Q11) | ADC2_IN3 |
| 5 | L2 (PC0)  | S2 (Q2) | ADC5_IN7 | S10 (Q10) | ADC2_IN4 |
| 6 | L1 (PC1)  | S1 (Q1) | ADC5_IN8 | S9 (Q9) | ADC2_IN5 |
| 7 | L0 (PC2)  | S0 (Q0) | ADC5_IN9 | S8 (Q8) | ADC3_IN1 |

 각 스텝은 순차 실행이므로 ADC 인스턴스 충돌은 없음.

---

## 3. 타이밍 및 소프트웨어 흐름

### 초기화 및 시작

`main.c` 스타트업 과정에서 `sen_vari_init()`으로 변수를 초기화하고, `sensor_scan_start()`를 호출하여 TIM2 인터럽트를 활성화함으로써 스캔을 시작함.

### 제어 주기

```
전체 스캔 주기 = 25µs × 8 step = 200µs (5kHz scan rate)
```

### 단일 스텝 타이밍

```
 0µs ─── TIM2 Update IRQ ──→ sensor_begin_step 호출 (현재 step LED ON, ADC 채널 설정)
                │
12.5µs ── TIM2 CH2 OC IRQ ──→ HAL_ADC_Start_DMA 2회 호출 (Hi/Lo 동시 트리거)
                │
~13µs ─── ADC 변환 완료 ───→ HAL_ADC_ConvCpltCallback 호출 (결과값 g_sen[].iq17_4095_value 저장)
                │
~13.5µs ─ DMA 양쪽 완료 ───→ LED OFF, step++, 8스텝 완료 시 sensor_check_127 정규화 실행
                │
25µs ──── 다음 TIM Update ──→ 다음 step 시작
```

> [!NOTE]
> LED 점등 시간이 25µs → ~13.5µs로 단축됨.  
> **효과**: 소비전류 감소, 인접 센서로의 빛 누설(크로스토크) 감소.

### ADC 병렬 변환 선택 이유

| 방식 | 특징 |
|---|---|
| 같은 ADC 순차 변환 | 두 센서 간 샘플링 시점 차이 발생 → 오차 가능 |
| **다른 ADC 병렬 변환 (채택)** | 동시 샘플링, 단일 채널 변환으로 속도 빠름 |

> [!NOTE]
> STM32G474는 ADC1+ADC2, ADC3+ADC4 하드웨어 Dual Mode를 지원하지만,  
> 현재 핀 배치상 센서 쌍이 해당 페어로 묶이지 않아 **소프트웨어 동시 트리거** 방식 채택.  
> 실용적으로 수십 ns 차이이므로 문제없음.

---

## 4. CubeMX 설정

### TIM2 (25µs 주기 타이머)

```
── 클럭 계산 (170MHz 기준) ──
Clock Source     : Internal Clock  (APB1 경유 → 170MHz)
Prescaler        : 84              → 170MHz ÷ 85 = 2MHz (0.5µs/tick)
Counter Period   : 49              → 50 tick × 0.5µs = 25µs 주기 ✔️

CH2 (OC Frozen)  : Pulse = 25     → 25 tick × 0.5µs = 12.5µs ✔️

NVIC             : TIM2 global interrupt Enable  ← Update + CC 모두 하나의 IRQ
```

### ADC1 ~ ADC5 (공통)

```
Continuous Conversion Mode : Disabled
Trigger                    : Software Start
Number of Conversions      : 1
DMA Continuous Requests    : Enabled
Rank 1 SamplingTime        : 2.5 Cycles
DMA Mode                   : Normal (매 변환 후 재시작)
DMA Transfer Complete IRQ  : Enable
```

### GPIO (L0~L7)

```
Mode      : GPIO_Output
Pull      : No Pull
Speed     : High Speed
```

---

## 5. 주요 결정 사항 요약

| 항목 | 결정 | 이유 |
|---|---|---|
| ADC 방식 | 다른 ADC 인스턴스 병렬 | 동시 샘플링, 빠른 변환 |
| ADC Dual Mode | 미사용 | 현재 핀 배치가 ADC1+ADC2, ADC3+ADC4 페어 불일치 |
| ADC 트리거 | 소프트웨어 트리거 (TIM OC IRQ에서 호출) | 구성 단순, 지터 미미 |
| DMA 동기화 | 플래그 방식 (`0x01 | 0x02 == 0x03`) | 단순하고 안정적 |
| LED OFF 시점 | DMA 양쪽 완료 시 즉시 | 점등 시간 최소화, 크로스토크 감소 |
| 전체 스캔 주기 | 200µs (5kHz) | 라인트레이서 제어 충분 |

---
