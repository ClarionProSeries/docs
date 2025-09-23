---
title: "vuRunExDelay"
summary: "Runs an external program with optional parameters and working directory after a specified delay."
description: "Runs an external program with optional parameters and working directory after a specified delay.  
This is similar to `vuRunEx`, but it allows you to delay execution for a defined number of milliseconds. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
- Process handle (greater than 0) if the program started successfully.  
- 0 if the process could not be started.  
- Negative values may indicate errors such as invalid arguments or access denied. ### Example Notes Use this when you need to stagger execution, such as waiting for a file to become available. The delay is applied once before the program is launched. ShowCmd values follow the Windows API ShowWindow constants (e.g., 0 = hidden, 1 = normal, 3 = maximized). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["external", "vuFileTools", "program", "optional", "delay", "parameters", "specified", "directory", "after", "working", "general", "with"]
function_name: "vuRunExDelay"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunExDelay(pFile, pParams, pWork, ShowCmd, DelayMS)

```Prototype
vuRunExDelay(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd, LONG DelayMS), LONG
```


## Description
Runs an external program with optional parameters and working directory after a specified delay.  
This is similar to `vuRunEx`, but it allows you to delay execution for a defined number of milliseconds.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Path to the executable file to run.                                         |
| pParams   | CSTRING(260) | Command-line parameters to pass to the executable (can be empty).           |
| pWork     | CSTRING(260) | Working directory for the process (can be empty to use current directory).  |
| ShowCmd   | LONG         | Window show mode (see Windows `SW_*` constants, e.g., 1 = normal).          |
| DelayMS   | LONG         | Delay in milliseconds before running the process.                          |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Process handle (greater than 0) if the program started successfully.  
- 0 if the process could not be started.  
- Negative values may indicate errors such as invalid arguments or access denied.

### Example

```Clarion
FilePath    CSTRING(260)
Params      CSTRING(260)
WorkFolder  CSTRING(260)
ShowCmd     LONG
DelayMS     LONG
Ret         LONG

  CODE
  FilePath   = 'C:\Windows\notepad.exe'
  Params     = ''
  WorkFolder = ''
  ShowCmd    = 1        ! SW_SHOWNORMAL
  DelayMS    = 2000     ! 2 seconds

  Ret = vuRunExDelay(FilePath, Params, WorkFolder, ShowCmd, DelayMS)

  MESSAGE('vuRunExDelay returned: ' & FORMAT(Ret), 'vuRunExDelay')

```
Notes

Use this when you need to stagger execution, such as waiting for a file to become available.

The delay is applied once before the program is launched.

ShowCmd values follow the Windows API ShowWindow constants (e.g., 0 = hidden, 1 = normal, 3 = maximized).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
