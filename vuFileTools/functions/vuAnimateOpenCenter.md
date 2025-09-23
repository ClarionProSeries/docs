---
title: "vuAnimateOpenCenter"
summary: "Animates the opening of a window from the center outward."
description: "Animates the opening of a window from the center outward. The animation duration is defined by `dwTime` in milliseconds. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example ### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is opened. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "outward", "animates", "from", "window", "Clarion", "animation", "center", "Windows", "vuanimateopencenter", "opening"]
function_name: "vuAnimateOpenCenter"
category: "Window Animation"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuAnimateOpenCenter(hWindow, dwTime)

```Prototype
vuAnimateOpenCenter(LONG,LONG), Signed
```


## Description
Animates the opening of a window from the center outward. The animation duration is defined by `dwTime` in milliseconds.

### Parameters

| Parameter | Data Type | Description                                    |
|-----------|-----------|------------------------------------------------|
| hWindow   | LONG      | Handle of the window to animate                |
| dwTime    | LONG      | Duration of the animation in milliseconds      |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
hWindow = Window{PROP:Handle}
dwTime  = 200  ! default

vuAnimateOpenCenter(hWindow, dwTime)
```

### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is opened.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
