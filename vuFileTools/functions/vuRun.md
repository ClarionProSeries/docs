---
title: "vuRun"
summary: "Runs a program using the Windows Shell with the specified window style and wait behavior."
description: "Runs a program using the Windows Shell with the specified window style and wait behavior. This function is useful for launching support programs, utilities, or batch processes from your Clarion application."
keywords: ["windows", "vuFileTools", "program", "style", "shell", "general", "vurun", "wait", "Clarion"]
function_name: "vuRun"
category: "General"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRun(Filename, WStyle, Wait)

```Prototype
vuRun(*CSTRING,LONG,LONG), Signed
```

## Description

Runs a program using the Windows Shell with the specified window style and wait behavior.

The `Filename` parameter is passed as a single command line string. This means it can contain the fully qualified path to the program followed by any runtime parameters.

## Related run functions

| Function | Separate File/Params | Working Folder | Delay | Wait | Best Use |
|----------|----------------------|----------------|-------|------|----------|
| [vuRun](vuRun.md) | No | No | No | Yes | Simple or legacy command-line launch with optional wait |
| [vuRunDelay](vuRunDelay.md) | No | No | Yes | No | Simple delayed launch |
| [vuRunEx](vuRunEx.md) | Yes | Yes | No | No | Preferred modern launch with separate parameters |
| [vuRunExWait](vuRunExWait.md) | Yes | Yes | No | Yes | Modern launch with separate parameters and wait |
| [vuRunExDelay](vuRunExDelay.md) | Yes | Yes | Yes | No | Modern delayed launch with separate parameters |
| [vuRunExDelayWait](vuRunExDelayWait.md) | Yes | Yes | Yes | Yes | Modern delayed launch with separate parameters and wait |
| [vuRunExists](vuRunExists.md) | No | No | No | No | Open a file or app only if the target already exists |
| [vuRunExistsEx](vuRunExistsEx.md) | No | No | File wait | No | Wait for a file to appear, then open it |

## Parameters

| Parameter | Data Type    | Description |
|-----------|--------------|-------------|
| Filename  | CSTRING(256) | Fully qualified path and filename of the program to run. May also include runtime parameters in the same string. |
| WStyle    | LONG         | Window style for execution:<br>0 = Hidden<br>1 = Normal with focus<br>2 = Minimized with focus<br>3 = Maximized with focus<br>4 = Normal without focus<br>6 = Minimized without focus |
| Wait      | LONG         | Execution wait flag:<br>0 = Return immediately and do not wait for completion<br>1 = Wait until the program completes |

## Returns

A LONG value:

- 1 (True) on success
- 0 (False) on failure

## Example

```Clarion
Filename = 'C:\Windows\Notepad.exe mydoc.txt'
WStyle   = 1   ! Normal with focus
Wait     = 1   ! Wait for program to complete

IF vuRun(Filename, WStyle, Wait)
  MESSAGE('Program executed successfully.')
ELSE
  MESSAGE('Failed to run program.')
END
```

## Notes

- `Filename` is treated as one command line string, so parameters must be appended correctly.
- If the executable path contains spaces, quote the executable path inside the command line string.

```Clarion
Filename = '"C:\Program Files\MyApp\MyTool.exe" /x /y'
```

- `WStyle = 0` requests hidden execution.
- `Wait = 1` tells `vuRun` to wait for the launched program to finish before returning.
- `vuRun` works well for simple launches and legacy compatibility.
- For launches that include separate parameters, a working folder, or more explicit control, see [vuRunEx](vuRunEx.md), [vuRunExWait](vuRunExWait.md), [vuRunExDelay](vuRunExDelay.md), and [vuRunExDelayWait](vuRunExDelayWait.md).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)