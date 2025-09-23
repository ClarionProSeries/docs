---
title: "vuDesktopIcons"
summary: "Hides or unhides the entire Windows desktop, including icons, taskbar, and system tray."
description: "Hides or unhides the entire Windows desktop, including icons, taskbar, and system tray. Useful for POS and commercial applications that require exclusive access to the screen. Can be combined with `vuDisableWindowsKey` to fully lock down the environment. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vudesktopicons", "vuFileTools", "tray", "including", "general", "unhides", "taskbar", "entire", "hides", "Clarion", "icons"]
function_name: "vuDesktopIcons"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDesktopIcons(Hide)

```Prototype
vuDesktopIcons(LONG), Signed
```


## Description
Hides or unhides the entire Windows desktop, including icons, taskbar, and system tray. Useful for POS and commercial applications that require exclusive access to the screen. Can be combined with `vuDisableWindowsKey` to fully lock down the environment.

### Parameters

| Parameter | Data Type | Description                                              |
|-----------|-----------|----------------------------------------------------------|
| Hide      | LONG      | 1 = Hide desktop icons and taskbar <br> 0 = Restore them |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
! Hide desktop icons and taskbar
vuDesktopIcons(1)

! Restore desktop icons and taskbar
vuDesktopIcons(0)
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
