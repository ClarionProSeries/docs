---
title: "vuShellEx"
summary: "Launches a file using the Windows shell with optional parameters, working directory, and window display options."
description: "Launches a file using the Windows shell with optional parameters, working directory, and window display options."
keywords: ["windows", "vuFileTools", "shell", "using", "Windows", "Clarion", "integration", "vushellex", "launches", "file"]
function_name: "vuShellEx"
category: "Shell Integration"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuShellEx(pFile, pParams, pWork, ShowCmd)

```Prototype
vuShellEx(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd), LONG
```

## Description
Launches a file using the Windows shell with optional parameters, working directory, and window display options.

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
| pFile | CSTRING(260) | Full path to the file or executable to launch. |
| pParams | CSTRING(260) | Optional command-line parameters. |
| pWork | CSTRING(260) | Optional working directory. |
| ShowCmd | LONG | Window display option (see ShowWindow constants, for example 1 = normal window). |

_Note: In vuFileTools V5, CSTRINGs are not limited to the sizes shown above. The numbers are for example only._

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
Ret        LONG

FilePath   = 'C:\Temp\Readme.txt'
Params     = ''
WorkFolder = ''
ShowCmd    = 1

Ret = vuShellEx(FilePath, Params, WorkFolder, ShowCmd)
```

### Notes
- `vuShellEx` honors file associations, so documents open in their registered Windows applications.
- Use this when you need shell behavior plus explicit parameters or a working folder.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
