---
title: "vuCloseApp"
summary: "Requests the application to close using a cooperative shutdown, optionally with a safety-net forced terminate."
description: "Requests the application to close using a cooperative shutdown, optionally with a safety-net forced terminate."
keywords: ["vuFileTools", "vucloseapp", "close", "shutdown", "terminate", "force", "mode", "Clarion", "Windows", "application"]
function_name: "vuCloseApp"
category: "General"
version_added: "5.0"
last_updated: "2026-01-03"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCloseApp(Mode)

```Prototype
vuCloseApp(LONG), Signed
```

## Description
Requests the application to close. This is intended for situations where you need to close an app from code (including from a background polling loop), without relying on Clarion HALT.

### Parameters

| Parameter | Data Type | Description |
|----------|-----------|-------------|
| Mode     | LONG      | Close mode:<br>0 = Graceful close request (cooperative, may prompt)<br>1 = Graceful close request + forced terminate after a delay (safety net)<br>2 = Hard kill immediately (no prompts, no cleanup) |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
! Mode 0: cooperative close (may prompt user to save changes)
vuCloseApp(0)

! Mode 1: cooperative close first, then forced terminate if still running
vuCloseApp(1)

! Mode 2: immediate hard kill (no prompts, unsaved work can be lost)
vuCloseApp(2)

! After calling, exit your current code path (RETURN from a PROCEDURE, or EXIT from a ROUTINE).
```

### Notes
- Mode 0 is cooperative and may display prompts (for example, save changes).  
- In some multi-DLL ABC apps, Mode 0 may not fully exit if a dirty form prompts during shutdown. In that case, use Mode 1 for reliable exit.  
- Mode 1 requests a normal shutdown first, then forces termination after a delay if the app is still running.  
- Mode 2 forces immediate termination with no prompts and no normal cleanup, so unsaved work can be lost.  
- Mode 2 terminates the process directly, so any in-app shutdown logic may not run.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
