---
title: "vuRunOnReboot"
summary: "Arms or disarms automatic restart of your application after an abnormal termination or system shutdown."
description: "Arms or disarms automatic restart of your application after an abnormal termination or system shutdown. Unlike Startup, this only restarts the program if it was running at the time of the crash or power loss. If the application ends normally, it will not restart on reboot. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- When armed, if the PC is rebooted due to power loss or crash, the program will automatically restart after user log-in.  
- Use at the beginning of your program to enable and disarm at the end to avoid unwanted restarts. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["termination", "restart", "vuFileTools", "vurunonreboot", "arms", "after", "general", "disarms", "system", "Clarion", "abnormal", "automatic"]
function_name: "vuRunOnReboot"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunOnReboot(Action)

```Prototype
vuRunOnReboot(LONG), Signed
```


## Description
Arms or disarms automatic restart of your application after an abnormal termination or system shutdown. Unlike Startup, this only restarts the program if it was running at the time of the crash or power loss. If the application ends normally, it will not restart on reboot.

### Parameters

| Parameter | Data Type | Description                              |
|-----------|-----------|------------------------------------------|
| Action    | LONG      | 1 (True) to arm, 0 (False) to disarm.    |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
! Arm at program start
vuRunOnReboot(1)

! Disarm at program end
vuRunOnReboot(0)
```

### Notes
- When armed, if the PC is rebooted due to power loss or crash, the program will automatically restart after user log-in.  
- Use at the beginning of your program to enable and disarm at the end to avoid unwanted restarts.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
