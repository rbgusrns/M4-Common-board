# STM32 VS Code Workflow for `M4_STEP`

## Purpose

This document records the repository-owned VS Code workflow for this STM32 project.

Use it when CubeMX code generation has already been completed and committed, and you want to continue firmware development in VS Code with the existing CMake, flash, and debug wiring.

You can also use this document as a bootstrap guide for a different STM32 project, as long as that project follows the same basic pattern:

- CubeMX generated code is already present
- CubeMX target toolchain is `CMake`
- build artifacts are produced through CMake presets
- VS Code is used for build, flash, and debug orchestration

This guide is written against the current contents of this repository. If the build system, linker script, launch configuration, or CubeMX output changes, update this file together with those changes.

## Starting Point

This workflow assumes the following starting state:

- `M4_STEP.ioc` already exists.
- CubeMX code generation has already been run.
- Generated STM32 sources are already present under `Core/` and `Drivers/`.
- The generated source wiring under `cmake/stm32cubemx/` already exists.

In other words, this document is **not** about creating a brand new STM32 project from scratch. It is about opening an already-generated STM32 project in VS Code and continuing development safely.

## Repository Configuration Snapshot

At the time of writing, this repository is configured as follows:

- Project name: `M4_STEP`
- MCU part from CubeMX: `STM32G474VET6`
- CubeMX target toolchain: `CMake`
- Primary CMake preset: `Debug`
- Build generator: `Ninja`
- Toolchain file: `cmake/gcc-arm-none-eabi.cmake`
- Linker script: `STM32G474XX_FLASH.ld`
- Startup file used by the build: `startup_stm32g474xx.s`

The currently configured build outputs are:

- `build/Debug/M4_STEP.elf`
- `build/Debug/M4_STEP.hex`
- `build/Debug/M4_STEP.bin`

## If You Reuse This for a New Project

When starting a different STM32 project with the same workflow, do **not** copy the file blindly. Review and update at least these project-specific values:

- project name in `CMakeLists.txt`
- `.elf`, `.hex`, `.bin` output names
- `.ioc` file name
- MCU part number from CubeMX
- linker script file name
- startup file name/path
- `launch.json` `device` value
- any flash target filename in `.vscode/tasks.json`

For a new project, the minimum adaptation checklist is:

1. Generate code from CubeMX with `ProjectManager.TargetToolchain=CMake`.
2. Confirm `Core/`, `Drivers/`, startup file, linker script, and generated CMake wiring exist.
3. Update top-level `CMakeLists.txt` so the executable name matches the new project.
4. Update `CMakePresets.json` only if preset names or toolchain location differ.
5. Update `.vscode/tasks.json` so the flash task points to the new `.hex` filename.
6. Update `.vscode/launch.json` so the ELF path, device name, and debugger paths match the new project.
7. Run configure and build before attempting flash or debug.

## Required Local Tools

Install these tools on Windows before using this workspace:

- `STM32CubeCLT`
- `VS Code`
- VS Code extensions:
  - `CMake Tools`
  - `C/C++`
  - `Cortex-Debug`

The repository also recommends these extensions through `.vscode/extensions.json`.

## Required Environment Variable

This workspace expects `STM32CubeCLT_ROOT` to point to your STM32CubeCLT installation directory.

Example:

- name: `STM32CubeCLT_ROOT`
- value: `C:\ST\STM32CubeCLT_1.21.0`

Temporary PowerShell example:

```powershell
$env:STM32CubeCLT_ROOT = 'C:\ST\STM32CubeCLT_1.21.0'
```

Persistent user-level PowerShell example:

```powershell
[Environment]::SetEnvironmentVariable(
  'STM32CubeCLT_ROOT',
  'C:\ST\STM32CubeCLT_1.21.0',
  'User'
)
```

After changing it persistently, fully close and reopen VS Code.

## Files That Define the Workflow

These files are the main sources of truth for the VS Code workflow:

- `M4_STEP.ioc`
  - hardware configuration source of truth
- `CMakePresets.json`
  - defines the `Debug` and `Release` presets
  - sets the generator to `Ninja`
  - places build output under `build/<preset>`
- `cmake/gcc-arm-none-eabi.cmake`
  - defines the ARM GCC toolchain and linker flags
  - selects `STM32G474XX_FLASH.ld`
- `cmake/stm32cubemx/CMakeLists.txt`
  - wires the generated `Core/` and `Drivers/` sources into the build
  - includes the startup file `startup_stm32g474xx.s`
- `CMakeLists.txt`
  - defines the executable target
  - adds post-build generation of `.hex` and `.bin`
- `.vscode/settings.json`
  - tells VS Code to use CMake presets
- `.vscode/tasks.json`
  - defines configure, build, and flash entry points
- `.vscode/launch.json`
  - defines the ST-LINK debug launch configuration for Cortex-Debug

## One-Time VS Code Bring-Up

Use this order on a new machine:

1. Install `STM32CubeCLT`, `VS Code`, and the recommended extensions.
2. Set `STM32CubeCLT_ROOT`.
3. Fully restart VS Code.
4. Open this repository root in VS Code.
5. Let VS Code detect the CMake presets.
6. Run the `cmake: build` task once.
7. Confirm `build/Debug/M4_STEP.elf` exists.

If build succeeds, IntelliSense, indexing, and debug launch will have the files they need.

## Build Workflow

### Option A: direct CLI build

From the repository root, either ensure `CMake\bin` is already on `PATH`, or invoke the STM32CubeCLT copy of CMake explicitly:

```powershell
& "$env:STM32CubeCLT_ROOT\CMake\bin\cmake.exe" --preset Debug
& "$env:STM32CubeCLT_ROOT\CMake\bin\cmake.exe" --build --preset Debug
```

Use this when you want to validate the project independently of VS Code task wiring.

The preset adds GNU ARM toolchain and Ninja paths to the CMake process environment, but it does not make `cmake.exe` itself discoverable if your shell cannot already find it.

### Option B: VS Code task build

Run:

- `Terminal -> Run Task -> cmake: build`

Task relationship:

- `cmake: build` depends on `cmake: configure`
- `cmake: configure` runs `cmake.exe --preset Debug`
- `cmake: build` runs `cmake.exe --build --preset Debug`

Expected outputs:

- `build/Debug/M4_STEP.elf`
- `build/Debug/M4_STEP.hex`
- `build/Debug/M4_STEP.bin`

### Current verification status

This workspace currently contains build artifacts that are consistent with a successful prior `Debug` configure/build, including:

- `build/Debug/CMakeCache.txt`
- `build/Debug/build.ninja`
- `build/Debug/compile_commands.json`
- `build/Debug/M4_STEP.elf`
- `build/Debug/M4_STEP.hex`
- `build/Debug/M4_STEP.bin`

In this repository setup work, `Debug` configure/build was also run successfully while aligning the workspace configuration.

## Flash Workflow

Use the task:

- `Terminal -> Run Task -> flash: stlink`

Task behavior from `.vscode/tasks.json`:

- `flash: stlink` depends on `cmake: build`
- it uses `STM32_Programmer_CLI.exe`
- it writes `build/Debug/M4_STEP.hex`
- it passes ST-LINK connection arguments for `SWD`, `UR`, and reset

There is also a convenience task:

- `build + flash`

Effective sequence:

1. `cmake: configure`
2. `cmake: build`
3. `flash: stlink`

Flash success still depends on the usual hardware conditions:

- ST-LINK is connected
- target board is powered
- no other tool is holding the debug interface

## Debug Workflow

Use the launch configuration:

- `M4_STEP Debug (ST-LINK)`

This launch config currently uses:

- `type: cortex-debug`
- `request: launch`
- `servertype: stlink`
- `preLaunchTask: cmake: build`
- executable: `build/Debug/M4_STEP.elf`
- device: `STM32G474VE`
- interface: `swd`
- entry point: `main`

Practical flow:

1. Build the project through the pre-launch task.
2. Start the debug session from **Run and Debug**.
3. Let Cortex-Debug launch the ST-LINK debug server using the configured paths.

This repository contains the debug configuration, but actual debug success still depends on machine-local tool installation, ST-LINK connectivity, and board state.

## When to Re-run CubeMX

You do **not** need to re-run CubeMX for normal firmware editing.

Re-run CubeMX only when the hardware configuration changes in `M4_STEP.ioc`, for example:

- pin assignments changed
- clocks changed
- peripherals were added, removed, or reconfigured
- DMA, interrupts, or middleware setup changed

After CubeMX re-generates code, re-check these items:

- generated source files under `Core/` and `Drivers/`
- `cmake/stm32cubemx/CMakeLists.txt`
- `startup_stm32g474xx.s`
- `STM32G474XX_FLASH.ld`
- `.vscode/launch.json` device/output assumptions if the target variant changed

## Maintenance Checklist

When this repository changes, keep this document aligned with the actual files.

Check at least the following:

- project name in CMake and output filenames
- active preset names in `CMakePresets.json`
- toolchain file name and path
- linker script name
- startup file path
- task labels in `.vscode/tasks.json`
- launch name and debug fields in `.vscode/launch.json`
- expected output artifact names

## Common Pitfalls

### 1. `STM32CubeCLT_ROOT` is empty inside VS Code

Symptoms usually look like broken task paths, for example a missing `cmake.exe` or `arm-none-eabi-gdb.exe`.

What to check:

- the environment variable is actually set
- VS Code was fully restarted after changing it
- the expected folders exist under the selected CLT installation

### 2. CLI build works but VS Code build fails

This usually means the terminal environment and the VS Code task environment are not seeing the same tool paths.

What to compare:

- `STM32CubeCLT_ROOT`
- actual `cmake.exe` location
- actual `ninja.exe` location
- actual GNU ARM toolchain location

### 3. Flash task fails after a successful build

Check:

- ST-LINK connection
- board power
- `STM32_Programmer_CLI.exe` path
- whether another debugger session is already active

### 4. Debug launch fails before connecting

Check:

- `ST-LINK_gdbserver.exe` path
- `arm-none-eabi-gdb.exe` path
- `build/Debug/M4_STEP.elf` exists
- the board is powered and reachable over SWD

### 5. MCU variant assumptions drift

This repository currently uses these related identifiers:

- CubeMX part: `STM32G474VET6`
- launch device: `STM32G474VE`
- compile define: `STM32G474xx`
- linker script: `STM32G474XX_FLASH.ld`

If the actual target part changes, review them together instead of changing only one place.

## Fast Reference

- configure: `cmake: configure`
- build: `cmake: build`
- flash: `flash: stlink`
- build + flash: `build + flash`
- debug launch: `M4_STEP Debug (ST-LINK)`
- ELF: `build/Debug/M4_STEP.elf`
- HEX: `build/Debug/M4_STEP.hex`
- BIN: `build/Debug/M4_STEP.bin`
