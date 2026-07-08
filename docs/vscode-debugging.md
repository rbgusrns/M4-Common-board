# VS Code에서 STM32 디버깅하기

## 목적

이 문서는 **CubeIDE가 아닌 VS Code**에서 STM32 펌웨어를 디버깅하는 방법을 정리한 문서다.

이 저장소 기준으로는 다음 조합을 사용한다.

- `Cortex-Debug` VS Code 확장
- `STM32CubeCLT`에 포함된 `ST-LINK GDB Server`
- `arm-none-eabi-gdb`
- `ST-LINK`

즉, CubeMX로 코드 생성과 CMake 기본 뼈대는 이미 되어 있고, VS Code에서 빌드/실행/브레이크포인트 디버깅을 이어서 수행하는 흐름을 다룬다.

---

## 1. 필요한 준비물

### 필수 설치 항목

Windows 기준으로 아래가 필요하다.

- `STM32CubeCLT`
- `VS Code`
- VS Code 확장
  - `Cortex-Debug`
  - `C/C++`
  - `CMake Tools`

### 하드웨어

- `ST-LINK`
- STM32 타깃 보드
- 타깃 보드 전원 공급 가능 상태

---

## 2. 환경 변수 설정

이 저장소 방식은 `STM32CubeCLT_ROOT` 환경 변수를 기준으로 CLT 내부 도구 경로를 찾는다.

예시:

- 변수명: `STM32CubeCLT_ROOT`
- 값: `C:\ST\STM32CubeCLT_1.21.0`

### 현재 PowerShell 세션에만 임시 적용

```powershell
$env:STM32CubeCLT_ROOT = 'C:\ST\STM32CubeCLT_1.21.0'
```

### 사용자 환경 변수로 영구 적용

```powershell
[Environment]::SetEnvironmentVariable(
  'STM32CubeCLT_ROOT',
  'C:\ST\STM32CubeCLT_1.21.0',
  'User'
)
```

영구 적용 후에는 **VS Code를 완전히 종료 후 다시 실행**해야 한다.

---

## 3. 먼저 빌드가 되어 있어야 함

디버깅은 소스 코드만으로 시작되지 않는다. 반드시 디버그 심볼이 포함된 `.elf` 파일이 먼저 생성되어 있어야 한다.

이 저장소 기준 빌드 산출물은 다음과 같다.

- `build/Debug/M4_STEP.elf`
- `build/Debug/M4_STEP.hex`
- `build/Debug/M4_STEP.bin`

빌드가 되지 않으면 디버깅도 시작할 수 없다.

---

## 4. VS Code 디버깅의 핵심 구성

VS Code에서 STM32 디버깅은 보통 아래 3가지를 연결하는 작업이다.

1. **ELF 파일 경로**
2. **GDB 실행 파일 경로**
3. **ST-LINK GDB 서버 경로**

이 저장소에서는 이 설정이 `.vscode/launch.json`에 들어 있다.

현재 저장소의 실제 설정은 다음과 같다.

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "M4_STEP Debug (ST-LINK)",
      "type": "cortex-debug",
      "request": "launch",
      "cwd": "${workspaceFolder}",
      "executable": "${workspaceFolder}/build/Debug/M4_STEP.elf",
      "servertype": "stlink",
      "serverpath": "${env:STM32CubeCLT_ROOT}\\STLink-gdb-server\\bin\\ST-LINK_gdbserver.exe",
      "stm32cubeprogrammer": "${env:STM32CubeCLT_ROOT}\\STM32CubeProgrammer\\bin",
      "gdbPath": "${env:STM32CubeCLT_ROOT}\\GNU-tools-for-STM32\\bin\\arm-none-eabi-gdb.exe",
      "device": "STM32G474VE",
      "interface": "swd",
      "runToEntryPoint": "main",
      "preLaunchTask": "cmake: build",
      "showDevDebugOutput": "raw"
    }
  ]
}
```

---

## 5. 각 설정 항목이 의미하는 것

### `type: "cortex-debug"`

VS Code의 `Cortex-Debug` 확장을 사용한다는 뜻이다.

### `executable`

디버깅 대상 ELF 파일 경로다.

이 저장소에서는:

```json
"executable": "${workspaceFolder}/build/Debug/M4_STEP.elf"
```

새 프로젝트에서는 이 경로와 파일명이 바뀔 수 있다.

### `servertype: "stlink"`

ST-LINK 기반 GDB 서버를 사용하겠다는 뜻이다.

### `serverpath`

실제로 실행할 ST-LINK GDB 서버 바이너리 경로다.

```json
"serverpath": "${env:STM32CubeCLT_ROOT}\\STLink-gdb-server\\bin\\ST-LINK_gdbserver.exe"
```

### `stm32cubeprogrammer`

Cube Programmer 도구 경로다. Cortex-Debug가 ST-LINK 연동 과정에서 활용한다.

### `gdbPath`

ARM용 GDB 경로다.

```json
"gdbPath": "${env:STM32CubeCLT_ROOT}\\GNU-tools-for-STM32\\bin\\arm-none-eabi-gdb.exe"
```

### `device`

디버깅 대상 MCU 이름이다.

이 저장소에서는:

```json
"device": "STM32G474VE"
```

CubeMX에서 사용한 MCU와 완전히 같은 표기 체계인지 확인해야 한다.

### `interface`

디버그 인터페이스다. 보통 ST-LINK 사용 시 `swd`를 쓴다.

### `runToEntryPoint`

디버거가 연결된 뒤 자동으로 어디까지 실행할지를 의미한다.

이 저장소에서는 `main`까지 진입한다.

### `preLaunchTask`

디버깅 시작 전에 먼저 빌드를 수행하도록 연결한 값이다.

이 저장소에서는:

```json
"preLaunchTask": "cmake: build"
```

즉, 디버그 버튼을 누르면 먼저 빌드가 실행되고, 빌드 성공 후 디버깅이 시작된다.

---

## 6. 빌드 Task 연결

`launch.json`에서 `preLaunchTask`를 쓰려면 `.vscode/tasks.json`에 해당 task가 있어야 한다.

이 저장소의 실제 build task는 다음과 같다.

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "cmake: configure",
      "type": "process",
      "command": "${env:STM32CubeCLT_ROOT}\\CMake\\bin\\cmake.exe",
      "args": [
        "--preset",
        "Debug"
      ],
      "options": {
        "cwd": "${workspaceFolder}"
      },
      "problemMatcher": []
    },
    {
      "label": "cmake: build",
      "type": "process",
      "command": "${env:STM32CubeCLT_ROOT}\\CMake\\bin\\cmake.exe",
      "args": [
        "--build",
        "--preset",
        "Debug"
      ],
      "options": {
        "cwd": "${workspaceFolder}"
      },
      "dependsOn": [
        "cmake: configure"
      ],
      "dependsOrder": "sequence",
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "problemMatcher": []
    }
  ]
}
```

핵심은 이 두 가지다.

1. `cmake: configure`
2. `cmake: build`

그리고 `cmake: build`가 `cmake: configure`에 의존하도록 연결되어 있으면 VS Code 안에서 순서대로 실행된다.

---

## 7. 실제 디버깅 실행 순서

### 1단계: 보드 연결

- ST-LINK 연결
- 타깃 보드 전원 확인
- SWD 연결 상태 확인

### 2단계: VS Code에서 프로젝트 열기

저장소 루트를 VS Code로 연다.

### 3단계: 디버그 구성 선택

왼쪽 **Run and Debug** 탭으로 이동한 뒤 아래 구성을 선택한다.

- `M4_STEP Debug (ST-LINK)`

### 4단계: 디버깅 시작

디버그 시작 버튼을 누르면 보통 아래 순서로 동작한다.

1. `cmake: build` 실행
2. ELF 생성 확인
3. ST-LINK GDB 서버 실행
4. `arm-none-eabi-gdb` 연결
5. 펌웨어 로드 및 초기화
6. `main` 진입

여기까지 되면 이후부터는 일반적인 소스 레벨 디버깅과 동일하다.

---

## 8. 디버깅 중 할 수 있는 것

VS Code에서 아래 기능을 사용할 수 있다.

- 브레이크포인트 설정
- Continue
- Step Over
- Step Into
- Step Out
- Call Stack 확인
- 변수 값 확인
- Watch 등록
- 메모리/레지스터 확인

즉, CubeIDE에서 하던 기본적인 디버깅 작업 대부분을 VS Code에서도 동일하게 수행할 수 있다.

---

## 9. 새 프로젝트에 복사할 때 바꿔야 하는 항목

다른 STM32 프로젝트에 이 구성을 재사용할 때는 아래 항목들을 프로젝트에 맞게 수정해야 한다.

- `launch.json`
  - `name`
  - `executable`
  - `device`
  - 필요하면 `runToEntryPoint`
- `tasks.json`
  - preset 이름 (`Debug` 등)
  - CMake 경로 호출 방식
- 빌드 산출물 이름
  - `my_project.elf`
  - `my_project.hex`
  - `my_project.bin`

특히 가장 자주 틀리는 항목은 아래 3개다.

1. `executable` 경로
2. `device` 이름
3. `STM32CubeCLT_ROOT` 환경 변수

---

## 10. 자주 발생하는 문제

### 1. 디버그 시작 전에 바로 실패함

주로 아래 중 하나다.

- `STM32CubeCLT_ROOT`가 VS Code에서 비어 있음
- `ST-LINK_gdbserver.exe` 경로가 틀림
- `arm-none-eabi-gdb.exe` 경로가 틀림

먼저 환경 변수와 실제 설치 경로를 확인한다.

### 2. ELF 파일을 못 찾음

주로 아래 원인이다.

- 빌드가 아직 안 됨
- `executable` 경로가 실제 출력 파일과 다름
- 프로젝트 이름을 바꿨는데 출력 파일명을 반영하지 않음

### 3. ST-LINK 연결 실패

아래를 확인한다.

- ST-LINK 연결 상태
- 보드 전원 상태
- 다른 디버거/프로그래머가 이미 점유 중인지 여부
- SWD 배선 문제

### 4. 디버거는 붙는데 이상한 MCU처럼 동작함

주로 `device` 설정이 실제 타깃과 안 맞는 경우다.

CubeMX의 MCU 파트명, 링크 스크립트, startup 파일, `launch.json`의 `device`를 같이 확인해야 한다.

---

## 11. 빠른 체크리스트

디버깅이 안 될 때는 아래 순서로 보면 된다.

1. `STM32CubeCLT_ROOT`가 올바른가?
2. VS Code를 환경 변수 설정 후 재시작했는가?
3. `cmake: build`가 성공하는가?
4. `build/Debug/*.elf`가 실제로 존재하는가?
5. `launch.json`의 `executable` 경로가 맞는가?
6. `gdbPath`와 `serverpath`가 실제 파일을 가리키는가?
7. ST-LINK와 보드 전원이 정상인가?
8. `device`가 실제 MCU와 맞는가?

---

## 12. 요약

CubeIDE 없이 VS Code에서 STM32를 디버깅하는 핵심은 다음 한 줄로 정리된다.

> **Cortex-Debug가 `arm-none-eabi-gdb`와 `ST-LINK_gdbserver`를 이용해, 빌드된 `.elf`를 기준으로 STM32 타깃에 붙는 구조다.**

이 저장소에서는 이미 그 구조가 `.vscode/launch.json`과 `.vscode/tasks.json`에 맞춰져 있으므로, 실제로 중요한 것은 아래 4가지다.

1. `STM32CubeCLT_ROOT` 설정
2. `.elf`가 생성되도록 빌드 성공
3. `launch.json`의 경로/MCU 이름 일치
4. ST-LINK와 보드 연결 상태 정상

이 네 가지가 맞으면 CubeIDE 없이도 VS Code만으로 충분히 빌드와 디버깅을 수행할 수 있다.
