---
title: "vuShellExDelay"
summary: "Runs an external program using the Windows shell with optional parameters and working directory after a specified delay."
description: "Runs an external program using the Windows shell with optional parameters and working directory after a specified delay."
keywords: ["vuFileTools", "shell", "external", "runs", "windows", "optional", "parameters", "specified", "directory", "Clarion", "integration", "with"]
function_name: "vuShellExDelay"
category: "Shell Integration"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuShellExDelay(pFile, pParams, pWork, ShowCmd, DelayMS)

```Prototype
vuShellExDelay(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd, LONG DelayMS), LONG
```

## Description
Runs an external program using the Windows shell with optional parameters and working directory after a specified delay.

## Related Shell Functions

| Function | Separate File/Params | Working Folder | Delay | Wait | Notes |
|----------|----------------------|----------------|-------|------|-------|
| [vuShell](vuShell.md) | No | No | No | No | Simple shell launch that honors Windows file associations. |
| [vuShellDelay](vuShellDelay.md) | No | No | Yes | No | Shell launch after a startup delay. |
| [vuShellEx](vuShellEx.md) | Yes | Yes | No | No | Preferred shell launch when you want file and parameters passed separately. |
| [vuShellExDelay](vuShellExDelay.md) | Yes | Yes | Yes | No | Shell launch with separate parameters plus startup delay. |

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| pFile | CSTRING(260) | Path to the file or executable to run. |
| pParams | CSTRING(260) | Optional command-line parameters to pass. |
| pWork | CSTRING(260) | Working directory for the process. |
| ShowCmd | LONG | Window show mode (see Windows `SW_*` constants). |
| DelayMS | LONG | Delay in milliseconds before the launch begins. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 if the file launched successfully
- 0 if the launch failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath   CSTRING(260)
Params     CSTRING(260)
WorkFolder CSTRING(260)
ShowCmd    LONG
DelayMS    LONG
Ret        LONG

FilePath   = 'C:\Temp\Readme.txt'
Params     = ''
WorkFolder = ''
ShowCmd    = 1
DelayMS    = 1500

Ret = vuShellExDelay(FilePath, Params, WorkFolder, ShowCmd, DelayMS)
```

### Notes
- Use this when you need Windows shell file-association behavior plus a startup delay.
- If you do not need separate parameters or a working folder, `vuShellDelay` is the simpler choice.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
