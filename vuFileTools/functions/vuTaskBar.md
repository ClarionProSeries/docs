---
title: "vuTaskBar"
summary: "Hides or unhides the Windows Taskbar, including the Start button."
description: "Hides or unhides the Windows Taskbar, including the Start button. Intended for scenarios such as POS applications where a clean, uncluttered background is desirable. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- Even when hidden, the Start menu and other features are accessible using the Windows key.  
- Useful for kiosk or point-of-sale applications that require a full-screen, distraction-free environment. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "including", "start", "button", "vutaskbar", "general", "unhides", "taskbar", "hides", "Clarion", "Windows"]
function_name: "vuTaskBar"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuTaskBar(Hide)

```Prototype
vuTaskBar(LONG), Signed
```


## Description
Hides or unhides the Windows Taskbar, including the Start button. Intended for scenarios such as POS applications where a clean, uncluttered background is desirable.

### Parameters

| Parameter | Data Type | Description                                      |
|-----------|-----------|--------------------------------------------------|
| Hide      | LONG      | 1 (True) to hide the Taskbar, 0 (False) to show it. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
! Hide the Taskbar
vuTaskBar(1)

! Restore the Taskbar
vuTaskBar(0)
```

### Notes
- Even when hidden, the Start menu and other features are accessible using the Windows key.  
- Useful for kiosk or point-of-sale applications that require a full-screen, distraction-free environment.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
