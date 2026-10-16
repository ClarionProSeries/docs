---
title: "vuRunDelay"
summary: "Runs the specified file after waiting for a specified delay."
description: "Runs the specified file after waiting for a specified delay."
keywords: ["delay", "vuFileTools", "vurundelay", "specified", "after", "waiting", "general", "Clarion", "runs", "Windows", "file"]
function_name: "vuRunDelay"
category: "General"
version_added: "5.0"
last_updated: "2026-10-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunDelay(pFile, DelayMS)

```Prototype
vuRunDelay(*CSTRING pFile, LONG DelayMS), LONG
```

## Description
Runs the specified file after waiting for a specified delay.

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
| pFile | `*CSTRING` | Full path to the file or executable to launch. |
| DelayMS | LONG | Delay before execution, in milliseconds (for example, 2000 = 2 seconds). |

**CSTRING size note:** `CSTRING(1024)` in this example is a caller-side declaration, not an unlimited-length guarantee. This function copies the relevant path, parameter, or working-folder text into internal 1,024-byte null-terminated buffer(s), so each copied value must fit (up to 1,023 characters plus its null byte). Longer input may be truncated; Windows can impose additional restrictions. See [CSTRING Sizes and Buffer Capacity](../cstring-sizes.md).

### Returns
A LONG value indicating the result:

- 1 if the file was executed successfully after the delay
- 0 if the file could not be executed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(1024)
DelayMS  LONG
Ret      LONG

FilePath = 'C:\Windows\Notepad.exe'
DelayMS  = 2000

Ret = vuRunDelay(FilePath, DelayMS)

MESSAGE('vuRunDelay returned: ' & FORMAT(Ret), 'vuRunDelay Test')
```

### Notes
- vuRunDelay is useful when you need a simple delayed launch and do not need separate parameters or a working folder.
- Use vuRunExDelay or vuRunExDelayWait when you need the same behavior with explicit file and parameter handling.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
