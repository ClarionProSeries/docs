---
title: "vuRunEx"
summary: "Runs the specified file with optional command-line parameters, working directory, and window display options."
description: "Runs the specified file with optional command-line parameters, working directory, and window display options. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._ ### Returns
A LONG value indicating the result: - 1: File executed successfully  
- 0: Failed to execute file   ### Example Notes Use ShowCmd to control how the launched application window is displayed (normal, minimized, maximized, etc.). If the working directory is empty, the system default is used. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["command", "optional", "vuFileTools", "vurunex", "specified", "parameters", "directory", "options", "display", "working", "general", "with"]
function_name: "vuRunEx"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunEx(pFile, pParams, pWork, ShowCmd)

```Prototype
vuRunEx(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd), LONG
```


## Description
Runs the specified file with optional command-line parameters, working directory, and window display options.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Full path to the executable file to run.                                    |
| pParams   | CSTRING(260) | Optional command-line parameters to pass to the executable.                 |
| pWork     | CSTRING(260) | Optional working directory for the executable.                              |
| ShowCmd   | LONG         | Window display option (see ShowWindow constants, e.g., 1 = Normal window).  |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._

### Returns
A LONG value indicating the result:

- 1: File executed successfully  
- 0: Failed to execute file  

### Example

```Clarion
FilePath   CSTRING(260)
Params     CSTRING(260)
WorkFolder CSTRING(260)
ShowCmd    LONG
Ret        LONG

FilePath   = 'C:\Windows\notepad.exe'
Params     = ''
WorkFolder = ''
ShowCmd    = 1   ! SW_SHOWNORMAL

Ret = vuRunEx(FilePath, Params, WorkFolder, ShowCmd)

MESSAGE('vuRunEx returned: ' & FORMAT(Ret), 'vuRunEx Test')

```
Notes

Use ShowCmd to control how the launched application window is displayed (normal, minimized, maximized, etc.).

If the working directory is empty, the system default is used.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
