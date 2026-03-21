---
title: "vuShell"
summary: "Runs a file with its associated executable."
description: "Runs a file with its associated executable. For example, opening a Word document will launch Microsoft Word."
keywords: ["vuFileTools", "Clarion", "shell", "associated", "executable", "with", "vushell", "integration", "runs", "Windows", "file"]
function_name: "vuShell"
category: "Shell Integration"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuShell(FileName)

```Prototype
vuShell(*CSTRING), Long
```

## Description
Runs a file with its associated executable. For example, opening a Word document will launch Microsoft Word.

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
| FileName | CSTRING(256) | Fully qualified path and name of the file to run. |

### Returns
A LONG value containing the instance handle of the application that was run.

### Example

```Clarion
FileName = 'MyDocument.doc'
AppHandle = vuShell(FileName)

IF AppHandle
  MESSAGE('Application launched successfully.')
ELSE
  MESSAGE('Failed to launch application.')
END
```

### Notes
- `vuShell` relies on the file association defined in Windows.
- Use `vuShellEx` when you need separate parameters, a working folder, or control over window display.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
