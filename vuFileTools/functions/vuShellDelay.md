---
title: "vuShellDelay"
summary: "Launches a file using the Windows shell after waiting for a specified delay."
description: "Launches a file using the Windows shell after waiting for a specified delay."
keywords: ["windows", "vuFileTools", "delay", "shell", "using", "vushelldelay", "specified", "associations", "after", "waiting", "honors", "Clarion"]
function_name: "vuShellDelay"
category: "Shell Integration"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuShellDelay(pFile, DelayMS)

```Prototype
vuShellDelay(*CSTRING pFile, LONG DelayMS), LONG
```

## Description
Launches a file using the Windows shell after waiting for a specified delay.

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
| DelayMS | LONG | Delay before launching, in milliseconds. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 if the file launched successfully after the delay
- 0 if the launch failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(260)
DelayMS  LONG
Ret      LONG

FilePath = 'C:\Temp\Readme.txt'
DelayMS  = 2000
Ret = vuShellDelay(FilePath, DelayMS)
```

### Notes
- Use this when you need shell association behavior but want to defer the launch briefly.
- Use `vuShellExDelay` when you also need separate parameters or a working folder.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
