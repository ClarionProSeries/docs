---
title: "vuRunEx"
summary: "Runs the specified file with optional command-line parameters, working directory, and window display options."
description: "Runs the specified file with optional command-line parameters, working directory, and window display options."
keywords: ["command", "optional", "vuFileTools", "vurunex", "specified", "parameters", "directory", "options", "display", "working", "general", "with"]
function_name: "vuRunEx"
category: "General"
version_added: "5.0"
last_updated: "2026-10-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunEx(pFile, pParams, pWork, ShowCmd)

```Prototype
vuRunEx(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd), LONG
```

## Description
Runs the specified file with optional command-line parameters, working directory, and window display options.

## Related Run Functions

| Function | Separate File/Params | Working Folder | Delay | Wait | Notes |
|----------|----------------------|----------------|-------|------|-------|
| [vuRun](vuRun.md) | No | No | No | Yes | Single command-line string. Good for simple or legacy launches. |
| [vuRunDelay](vuRunDelay.md) | No | No | Yes | No | Single command-line string with a startup delay. |
| [vuRunEx](vuRunEx.md) | Yes | Yes | No | No | Preferred modern launch when you want file and parameters passed separately. |
| [vuRunExWait](vuRunExWait.md) | Yes | Yes | No | Yes | Preferred modern launch with separate parameters and optional wait. |
| [vuRunExDelay](vuRunExDelay.md) | Yes | Yes | Yes | No | Modern launch with separate parameters plus startup delay. |
| [vuRunExDelayWait](vuRunExDelayWait.md) | Yes | Yes | Yes | Yes | Modern launch with separate parameters, startup delay, and optional wait. |
| [vuRunExists](vuRunExists.md) | No | No | No | No | Runs only if the target file already exists. |
| [vuRunExistsEx](vuRunExistsEx.md) | No | No | Polls for file | No | Waits for a file to appear, then runs it. |

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| pFile | `*CSTRING` | Full path to the executable file to run. |
| pParams | `*CSTRING` | Optional command-line parameters to pass to the executable. |
| pWork | `*CSTRING` | Optional working directory for the executable. |
| ShowCmd | LONG | Window display option (see ShowWindow constants, for example 1 = normal window). |


**CSTRING size note:** `CSTRING(1024)` in this example is a caller-side declaration, not an unlimited-length guarantee. This function copies the relevant path, parameter, or working-folder text into internal 1,024-byte null-terminated buffer(s), so each copied value must fit (up to 1,023 characters plus its null byte). Longer input may be truncated; Windows can impose additional restrictions. See [CSTRING Sizes and Buffer Capacity](../cstring-sizes.md).

### Returns
A LONG value indicating the result:

- 1 if the file launched successfully
- 0 if the launch failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath   CSTRING(1024)
Params     CSTRING(1024)
WorkFolder CSTRING(1024)
ShowCmd    LONG
Ret        LONG

FilePath   = 'C:\Windows\notepad.exe'
Params     = 'MyDoc.txt'
WorkFolder = ''
ShowCmd    = 1   ! SW_SHOWNORMAL

Ret = vuRunEx(FilePath, Params, WorkFolder, ShowCmd)

MESSAGE('vuRunEx returned: ' & FORMAT(Ret), 'vuRunEx Test')
```

### Notes
- vuRunEx is generally the preferred choice when you need to launch an executable with parameters.
- pFile and pParams are passed separately, which avoids command-line formatting mistakes common with single-string launch functions.
- If pWork is blank, the system default working folder is used.
- Use vuRunExWait when you need the same explicit parameter handling plus optional wait behavior.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
