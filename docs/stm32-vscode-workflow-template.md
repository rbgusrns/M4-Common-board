# STM32 VS Code Workflow Template

## Purpose

Use this template when you start a new STM32 project that already has CubeMX code generation completed and you want to continue development in VS Code.

This template is intended for projects with this general shape:

- CubeMX generated code already exists
- CubeMX target toolchain is `CMake`
- CMake presets are used for configure/build
- VS Code is used for build, flash, and debug orchestration
- `STM32CubeCLT` is the local tool bundle

This file is a template, not a finished project document. Replace every placeholder before treating it as the source of truth for a real repository.

## Placeholder Dictionary

Replace these placeholders with project-specific values:

- `{{PROJECT_NAME}}`
- `{{IOC_FILE_NAME}}`
- `{{CUBEMX_MCU_PART}}`
- `{{CORTEX_DEBUG_DEVICE}}`
- `{{MCU_FAMILY_DEFINE}}`
- `{{PRIMARY_CONFIGURE_PRESET}}`
- `{{PRIMARY_BUILD_PRESET}}`
- `{{CONFIGURE_TASK_LABEL}}`
- `{{BUILD_TASK_LABEL}}`
- `{{BUILD_AND_FLASH_TASK_LABEL}}`
- `{{BUILD_GENERATOR}}`
- `{{TOOLCHAIN_FILE_PATH}}`
- `{{LINKER_SCRIPT_PATH}}`
- `{{STARTUP_FILE_PATH}}`
- `{{ELF_OUTPUT_PATH}}`
- `{{HEX_OUTPUT_PATH}}`
- `{{BIN_OUTPUT_PATH}}`
- `{{FLASH_TASK_LABEL}}`
- `{{DEBUG_LAUNCH_NAME}}`
- `{{DEBUG_INTERFACE}}`
- `{{RUN_TO_ENTRY_POINT}}`
- `{{STM32CUBECLT_ROOT_ENV_VAR}}`
- `{{STM32CUBECLT_INSTALL_DIR_EXAMPLE}}`

## Starting Point

This workflow assumes the following state already exists:

- `{{IOC_FILE_NAME}}` exists in the repository
- CubeMX code generation has already been run
- generated application and driver sources already exist
- generated CMake wiring already exists

This template is not for creating a brand-new STM32 project from nothing. It is for standardizing the VS Code workflow after CubeMX has already generated the codebase.

## Project Configuration Snapshot

Document the actual project values here:

- Project name: `{{PROJECT_NAME}}`
- MCU part from CubeMX: `{{CUBEMX_MCU_PART}}`
- compile define family: `{{MCU_FAMILY_DEFINE}}`
- primary configure preset: `{{PRIMARY_CONFIGURE_PRESET}}`
- primary build preset: `{{PRIMARY_BUILD_PRESET}}`
- build generator: `{{BUILD_GENERATOR}}`
- toolchain file: `{{TOOLCHAIN_FILE_PATH}}`
- linker script: `{{LINKER_SCRIPT_PATH}}`
- startup file: `{{STARTUP_FILE_PATH}}`

Expected build outputs:

- `{{ELF_OUTPUT_PATH}}`
- `{{HEX_OUTPUT_PATH}}`
- `{{BIN_OUTPUT_PATH}}`

## Required Local Tools

Install these tools on Windows:

- `STM32CubeCLT`
- `VS Code`
- VS Code extensions:
  - `CMake Tools`
  - `C/C++`
  - `Cortex-Debug`

If the repository contains `.vscode/extensions.json`, align this section with that file.

## Required Environment Variable

This workflow assumes an environment variable for the STM32CubeCLT installation root.

- name: `{{STM32CUBECLT_ROOT_ENV_VAR}}`
- example value: `{{STM32CUBECLT_INSTALL_DIR_EXAMPLE}}`

Temporary PowerShell example:

```powershell
$env:{{STM32CUBECLT_ROOT_ENV_VAR}} = '{{STM32CUBECLT_INSTALL_DIR_EXAMPLE}}'
```

Persistent user-level PowerShell example:

```powershell
[Environment]::SetEnvironmentVariable(
  '{{STM32CUBECLT_ROOT_ENV_VAR}}',
  '{{STM32CUBECLT_INSTALL_DIR_EXAMPLE}}',
  'User'
)
```

After changing it persistently, fully close and reopen VS Code.

## Files That Define the Workflow

Adjust these paths and descriptions to match the repository:

- `{{IOC_FILE_NAME}}`
  - hardware configuration source of truth
- `CMakePresets.json`
  - defines configure/build presets
  - sets generator and build output directory
- `{{TOOLCHAIN_FILE_PATH}}`
  - defines the ARM GCC toolchain and linker flags
- generated STM32 CMake wiring file
  - usually wires generated `Core/` and `Drivers/` sources into the build
  - usually references `{{STARTUP_FILE_PATH}}`
- top-level `CMakeLists.txt`
  - defines the main executable target
  - may add post-build generation of `.hex` and `.bin`
- `.vscode/settings.json`
  - usually selects CMake preset workflow
- `.vscode/tasks.json`
  - usually defines configure, build, and flash entry points
- `.vscode/launch.json`
  - usually defines the Cortex-Debug launch configuration

## One-Time VS Code Bring-Up

Use this order on a new machine:

1. Install `STM32CubeCLT`, `VS Code`, and the required extensions.
2. Set `{{STM32CUBECLT_ROOT_ENV_VAR}}`.
3. Fully restart VS Code.
4. Open the repository root in VS Code.
5. Let VS Code detect the CMake presets.
6. Run the build task once.
7. Confirm `{{ELF_OUTPUT_PATH}}` exists.

If build succeeds, IntelliSense, indexing, and debug launch usually have the files they need.

## Build Workflow

### Option A: direct CLI build

From the repository root, either ensure the CLT-provided `cmake.exe` is already on `PATH`, or invoke it explicitly:

```powershell
& "$env:{{STM32CUBECLT_ROOT_ENV_VAR}}\CMake\bin\cmake.exe" --preset {{PRIMARY_CONFIGURE_PRESET}}
& "$env:{{STM32CUBECLT_ROOT_ENV_VAR}}\CMake\bin\cmake.exe" --build --preset {{PRIMARY_BUILD_PRESET}}
```

Use this when you want to validate the project independently of VS Code task wiring.

### Option B: VS Code task build

Run the repository build task, for example:

- `Terminal -> Run Task -> {{BUILD_TASK_LABEL}}`

Document the real task labels and relationships from `.vscode/tasks.json` here.

Expected outputs:

- `{{ELF_OUTPUT_PATH}}`
- `{{HEX_OUTPUT_PATH}}`
- `{{BIN_OUTPUT_PATH}}`

### Verification status

Record only what has actually been verified for the repository.

Good examples:

- configure/build was run successfully on this workspace
- build artifacts currently exist under the expected output directory
- flash was tested on hardware
- debug reached `{{RUN_TO_ENTRY_POINT}}`

Bad example:

- claiming flash or debug success without running it

## Flash Workflow

Document the repository flash task here.

Recommended fields to record:

- task label: `{{FLASH_TASK_LABEL}}`
- whether flash depends on build
- which programmer executable is used
- which image file is written
- which debug interface is used

Example structure:

1. configure
2. build
3. flash

Also record hardware expectations such as:

- debug probe connected (for example ST-LINK, if used by the repository)
- target board powered
- no other tool holding the debug interface

## Debug Workflow

Document the repository launch configuration here.

Recommended fields to record:

- launch name: `{{DEBUG_LAUNCH_NAME}}`
- debugger type: `cortex-debug`
- server type
- executable path: `{{ELF_OUTPUT_PATH}}`
- device: `{{CORTEX_DEBUG_DEVICE}}`
- interface: `{{DEBUG_INTERFACE}}`
- run-to-entry behavior: `{{RUN_TO_ENTRY_POINT}}`
- pre-launch build task if present

If the repository uses ST-LINK, make sure the document also states where the GDB server and `arm-none-eabi-gdb.exe` are expected to come from.

## When to Re-run CubeMX

You do not need to re-run CubeMX for normal firmware editing.

Re-run CubeMX when hardware configuration changes, for example:

- pin assignments changed
- clock tree changed
- peripherals were added, removed, or reconfigured
- DMA, interrupts, middleware, or generated setup changed

After CubeMX re-generates code, re-check at least:

- generated source files
- generated CMake wiring
- startup file path
- linker script path
- `.vscode/launch.json` output/device assumptions
- flash task output filename

## Maintenance Checklist

Keep the final repository-specific document aligned with the actual files.

Check at least the following:

- project name in CMake and output filenames
- active preset names in `CMakePresets.json`
- toolchain file name and path
- linker script name
- startup file path
- task labels in `.vscode/tasks.json`
- launch name and debug fields in `.vscode/launch.json`
- expected output artifact names
- environment variable name and install path assumptions

## Common Pitfalls

### 1. Environment variable is empty inside VS Code

Symptoms often look like broken task paths, missing `cmake.exe`, missing `arm-none-eabi-gdb.exe`, or missing programmer tools.

What to check:

- `{{STM32CUBECLT_ROOT_ENV_VAR}}` is actually set
- VS Code was fully restarted after changing it
- the expected CLT folders exist under the selected installation directory

### 2. CLI build works but VS Code build fails

This usually means the terminal environment and the VS Code task environment are not seeing the same tool paths.

Compare:

- CLT root variable value
- actual `cmake.exe` location
- actual `ninja.exe` location
- actual GNU ARM toolchain location

### 3. Flash fails after a successful build

Check:

- programmer/debug probe connection
- board power
- programmer executable path
- whether another debugger session is already active

### 4. Debug launch fails before connecting

Check:

- GDB server path
- `arm-none-eabi-gdb.exe` path
- `{{ELF_OUTPUT_PATH}}` exists
- the board is powered and reachable over `{{DEBUG_INTERFACE}}`

### 5. MCU identifiers drift apart

Review these together whenever the target changes:

- CubeMX MCU part
- debug launch device name
- compile define family
- linker script
- startup file

## Fast Reference

Fill this section with the real task and launch names from the repository.

- configure task: `{{CONFIGURE_TASK_LABEL}}`
- build task: `{{BUILD_TASK_LABEL}}`
- build + flash task: `{{BUILD_AND_FLASH_TASK_LABEL}}`
- flash: `{{FLASH_TASK_LABEL}}`
- debug launch: `{{DEBUG_LAUNCH_NAME}}`
- ELF: `{{ELF_OUTPUT_PATH}}`
- HEX: `{{HEX_OUTPUT_PATH}}`
- BIN: `{{BIN_OUTPUT_PATH}}`

## Finalization Checklist

Before adopting this template in a real repository, verify all of the following:

- all placeholders were replaced
- no old project name remains
- no old MCU part remains
- no old linker/startup filenames remain
- flash output path matches the actual `.hex`
- debug executable path matches the actual `.elf`
- task labels match `.vscode/tasks.json`
- launch name and device match `.vscode/launch.json`
- verification claims describe only what was actually tested
