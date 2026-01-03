---
title: "vuCloseAppEx"
summary: "Extended application close request with configurable forced-terminate delay and optional user warning countdown."
description: "Extended application close request with configurable forced-terminate delay and optional user warning countdown."
keywords: ["vuFileTools", "vucloseappex", "close", "shutdown", "warning", "countdown", "delay", "terminate", "Clarion", "Windows"]
function_name: "vuCloseAppEx"
category: "General"
version_added: "5.0"
last_updated: "2026-01-03"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCloseAppEx(Mode, KillDelayMS, WarnSeconds)

```Prototype
vuCloseAppEx(LONG,LONG,LONG), Signed
```

## Description
An extended version of vuCloseApp that lets you control how long the safety-net forced terminate waits (Mode 1), and optionally warns users before shutdown.

### Parameters

| Parameter    | Data Type | Description |
|-------------|-----------|-------------|
| Mode        | LONG      | Close mode:<br>0 = Graceful close request (cooperative, may prompt)<br>1 = Graceful close request + forced terminate after a delay (safety net)<br>2 = Hard kill immediately (no prompts, no cleanup) |
| KillDelayMS | LONG      | Forced terminate delay in milliseconds (Mode 1 only). If 0 or negative, defaults to the built-in value (7000 ms). |
| WarnSeconds | LONG      | If greater than 0, shows a warning message and delays the close request by this many seconds. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
! Warn users for 30 seconds, then request a graceful close.
! If the app is still running 7 seconds after that, it will be forced to terminate.
MESSAGE('About to run vuCloseAppEx(1,7000,30).' & |
        'This will warn the user and then attempt a graceful shutdown in 30 seconds.' & |
        'If the app is still running 7 seconds after that, it will be forced to terminate.', |
        'vuCloseAppEx Test',ICON:Exclamation)

vuCloseAppEx(1,7000,30)

! After calling, exit your current code path (RETURN from a PROCEDURE, or EXIT from a ROUTINE).
```

### Notes
- Mode values match vuCloseApp: 0 cooperative, 1 cooperative plus safety net, 2 immediate hard kill.  
- Mode 0 is cooperative and may display prompts (for example, save changes).  
- In some multi-DLL ABC apps, Mode 0 may not fully exit if a dirty form prompts during shutdown. In that case, use Mode 1 for reliable exit.  
- KillDelayMS is only used for Mode 1. If KillDelayMS is 0 or negative, the default delay is used.  
- WarnSeconds optionally displays a warning and delays the close request so users can save work.  
- For unattended shutdowns, Mode 1 plus WarnSeconds provides a good balance: warn users, attempt a graceful close, then guarantee exit.  
- Mode 2 terminates the process directly, so any in-app shutdown logic may not run.  
- Mode 2 bypasses prompts and normal cleanup, so unsaved work can be lost.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
