---
title: "vuRunExists"
summary: "Attempts to run the specified file if it exists."
description: "Attempts to run the specified file if it exists. This is a quick way to launch an application or document only if the file is present."
keywords: ["vurunexists", "exists", "launch", "run", "vuFileTools", "Clarion"]
function_name: "vuRunExists"
category: "General"
version_added: "5.0"
last_updated: "2026-10-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunExists(pFile)

```Prototype
vuRunExists(*CSTRING pFile), LONG
```

## Description
Attempts to run the specified file if it exists.

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
| pFile | `*CSTRING` | Full path to the file or executable to run. |

**CSTRING size note:** `CSTRING(1024)` in this example is a caller-side declaration, not an unlimited-length guarantee. This function copies the relevant path, parameter, or working-folder text into internal 1,024-byte null-terminated buffer(s), so each copied value must fit (up to 1,023 characters plus its null byte). Longer input may be truncated; Windows can impose additional restrictions. See [CSTRING Sizes and Buffer Capacity](../cstring-sizes.md).

### Returns
A LONG value indicating the result:

- 1 if the file exists and was launched
- 0 if the file does not exist or could not be launched
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(1024)
Ret      LONG

FilePath = 'C:\Temp\MyReport.pdf'
Ret = vuRunExists(FilePath)
```

### Notes
- Use this when the existence check is part of the launch requirement.
- If you need to wait for a file to appear before launching it, use vuRunExistsEx.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
