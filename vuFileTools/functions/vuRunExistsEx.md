---
title: "vuRunExistsEx"
summary: "Attempts to run the specified file if it exists. Optionally waits for the file to appear, polling at the given interval, before running it."
description: "Attempts to run the specified file if it exists. Optionally waits for the file to appear, polling at the given interval, before running it."
keywords: ["vurunexistsex", "exists", "poll", "wait", "run", "vuFileTools", "Clarion"]
function_name: "vuRunExistsEx"
category: "General"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunExistsEx(pFile, WaitSec, PollMS)

```Prototype
vuRunExistsEx(*CSTRING pFile, LONG WaitSec, LONG PollMS), LONG
```

## Description
Attempts to run the specified file if it exists. Optionally waits for the file to appear, polling at the given interval, before running it.

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
| pFile | CSTRING(260) | Full path to the file or executable to run. |
| WaitSec | LONG | Maximum number of seconds to wait for the file to appear. |
| PollMS | LONG | Polling interval in milliseconds while waiting for the file. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 if the file appeared and was launched successfully
- 0 if the file never appeared or could not be launched
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(260)
Ret      LONG

FilePath = 'C:\Temp\Incoming\DailyReport.pdf'
Ret = vuRunExistsEx(FilePath, 10, 200)
```

### Notes
- Use this when another process is expected to create the file shortly.
- `WaitSec = 0` means do not wait; the function will only check once.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
