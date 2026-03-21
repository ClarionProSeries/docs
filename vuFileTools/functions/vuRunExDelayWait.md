---
title: "vuRunExDelayWait"
summary: "Runs the specified file with optional parameters and working directory after a delay, and can optionally wait for the launched process to complete."
description: "Runs the specified file with optional parameters and working directory after a delay, and can optionally wait for the launched process to complete."
keywords: ["vuFileTools", "vurunexdelaywait", "run", "delay", "wait", "parameters", "working directory", "Clarion"]
function_name: "vuRunExDelayWait"
category: "General"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunExDelayWait(pFile, pParams, pWork, ShowCmd, DelayMS, Wait)

```Prototype
vuRunExDelayWait(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd, LONG DelayMS, LONG Wait), LONG
```

## Description
Runs the specified file with optional parameters and working directory after a delay, and can optionally wait for the launched process to complete.

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
| pFile | CSTRING(260) | Full path to the executable file to run. |
| pParams | CSTRING(260) | Optional command-line parameters to pass to the executable. |
| pWork | CSTRING(260) | Optional working directory for the executable. |
| ShowCmd | LONG | Window display option (see ShowWindow constants). |
| DelayMS | LONG | Delay in milliseconds before the launch begins. |
| Wait | LONG | 0 = return immediately, 1 = wait until the launched process completes. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 if the file launched successfully
- 0 if the input was invalid
- Negative values may indicate a Windows launch error

### Example

```Clarion
FilePath   CSTRING(260)
Params     CSTRING(260)
WorkFolder CSTRING(260)
ShowCmd    LONG
DelayMS    LONG
WaitFlag   LONG
Ret        LONG

FilePath   = 'C:\Windows\Notepad.exe'
Params     = 'MyDoc.txt'
WorkFolder = ''
ShowCmd    = 1
DelayMS    = 1500
WaitFlag   = 1

Ret = vuRunExDelayWait(FilePath, Params, WorkFolder, ShowCmd, DelayMS, WaitFlag)

MESSAGE('vuRunExDelayWait returned: ' & FORMAT(Ret), 'vuRunExDelayWait Test')
```

### Notes
- Use this when you need all three behaviors together: explicit file and parameters, delayed launch, and optional wait.
- This is useful when one process is expected to finish preparing a file before the launched process consumes it.
- If you do not need the delay, use `vuRunExWait`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
