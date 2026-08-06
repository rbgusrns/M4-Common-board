# M4_STEP Fresh 실습 코드

신입생 실습용 M4_STEP 기본 코드. 완성 정답 코드가 아니라 센서 처리, 메뉴, 모터 설정, 1차 주행 로직을 직접 채우는 TODO 포함.

## 폴더 구성

- `M4_STEP.ioc`: STM32CubeMX 설정 파일
- `Core/Inc`: 헤더 파일
- `Core/Src`: 실습용 소스 파일

주의: 이 폴더에는 `Drivers`, `cmake`, `CMakeLists.txt`, startup/linker 파일 없음. 이 폴더만 단독으로 열어 바로 빌드하는 프로젝트 아님.

## 사용 방법

1. 강의에서 제공한 원본 M4_STEP 프로젝트 준비
2. `M4_STEP.ioc` 파일을 STM32CubeMX에서 열기
3. `Code Generate` 실행
4. 이 폴더의 `Core`를 생성된 프로젝트의 `Core` 위치에 복사 또는 덮어쓰기
5. 별도 배포된 `.vscode` 폴더 추가
6. VS Code 개발환경 구축 확인
7. STM32CubeIDE 또는 CMake 환경에서 빌드
8. 빌드 완료 시 CPU에 펌웨어 업로드
9. UART 또는 OLED 출력 확인

제공되는 코드를 참고해 본인만의 트레이서 제작.


## 주요 실습 위치

- `Core/Src/menu.c`
  - 메뉴 인덱스, 메뉴 이름, 버튼 입력 처리, 기능 호출 구현
- `Core/Src/sensor.c`
  - ADC 값을 0~127 범위로 변환
  - 라인 감지 ON/OFF 값 갱신
  - 센서값 확인, 캘리브레이션, 위치 확인 화면 구현
- `Core/Src/motor.c`
  - 속도, 가속도, 조향 가감속, 종료 가속도, 턴 거리 설정 기능 구현
- `Core/Src/search.c`
  - 1차 주행 중 위치 계산, 조향, 턴마크 판단, 주행 종료 조건 구현

TODO 위치 확인:

```powershell
rg -n "TODO" Core
```

## 기본 동작

`main.c` 실행 순서:

1. `Variable_Init()` 실행
2. `sen_vari_init()` 실행
3. `Race_Init()` 실행
4. UART로 `Hello USART1` 출력
5. `menu_start()` 진입

`menu_start()` 동작:

- `OLED_Init()` 실행
- `sensor_scan_start()` 실행
- 무한 루프에서 `menu()` 반복 호출

현재 `menu()`는 과제 함수. 메뉴 구현 전에는 화면 또는 버튼 동작 제한 가능.

## OLED와 UART

기본 설정 위치: `Core/Inc/oled.h`

```c
#define OLED_HW_ENABLE 0U
#define OLED_SERIAL_FALLBACK 1U
```

- `OLED_HW_ENABLE == 0U`: 실제 OLED 대신 UART 로그 출력 중심 동작
- `OLED_HW_ENABLE == 1U`: 실제 OLED 화면 사용
- UART: USART1 사용
- 시작 로그: `Hello USART1` 출력

## 실습 전 확인 사항

- 보드와 STM32G474VETx 설정 일치 여부 확인
- STM32Cube FW_G4 V1.6.2 또는 호환 펌웨어 패키지 설치 확인
- 스위치 입력 active-low 기준 확인
- `SW_U == 0`: Up 버튼 눌림 상태
- 센서 캘리브레이션 전 127 변환값과 라인 감지 오동작 가능성 확인
- 모터 테스트 전 바퀴를 공중에 띄운 상태에서 먼저 확인

## 권장 구현 순서

1. `menu.c`에서 OLED 기본 메뉴 표시 구현
2. `sensor.c`의 4095 raw 값 표시 기능 구현
3. 센서 max/min 캘리브레이션 구현
4. 0~127 센서 변환 구현
5. 라인 ON/OFF 판단 구현
6. 위치 계산과 조향 상태를 OLED/UART로 확인
7. 모터 설정 메뉴 구현
8. 1차 주행 로직 구현

## 센서 캘리브레이션 기준

- `F_Max_min()`에서 max 설정 시 하얀 선 위에서 좌우로 왔다 갔다 하며 센서 인식
- `F_Max_min()`에서 min 설정 시 검은판 위에서 센서를 툭툭 튀겨가며 센서 인식
- max/min 설정 후 127 변환값이 라인 위/밖에서 구분되는지 확인
- 센서값이 튀거나 특정 센서만 반응이 약하면 캘리브레이션 재실행

## 주행 설정 기준

- 첫 주행 속도: `1800` 설정
- 첫 주행 가속도: `8000` 설정
- 주행 속도 `2200` 이상부터 입상 순위권 진입 가능
- `handle acc`와 `handle dec` 조절로 핸들값 튜닝
- 턴 구간 주행 안정성 향상을 위해 핸들값 반복 조정
- 안정적인 기록 확보를 위해 많은 연습 주행 필요
- 자신의 트레이서가 충분히 빠르다고 판단하면 말하세요. 2차 주행 (직선 가속) 코드 제공해드립니다.

## 주행 체크리스트

- `TODO` 과제 함수 구현 여부 확인
- 센서 raw 값 0~4095 범위 변화 확인
- 캘리브레이션 후 127 값이 라인 위/밖에서 구분되는지 확인
- max 설정 시 하얀 선 인식 여부 확인
- min 설정 시 검은판 인식 여부 확인
- 버튼 입력이 메뉴에서 한 번씩만 처리되는지 확인
- 모터 방향 반대 시 배선과 step 출력 순서 확인
- 주행 테스트 전 낮은 속도와 낮은 가속도로 먼저 확인
