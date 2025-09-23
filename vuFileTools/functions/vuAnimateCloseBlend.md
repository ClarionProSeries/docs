---
title: "vuAnimateCloseBlend"
summary: "Animates the closing of a window by blending it into the background."
description: "Animates the closing of a window by blending it into the background. The animation duration is defined by `dwTime` in milliseconds. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example ### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is closed. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["blending", "vuFileTools", "closing", "into", "animates", "background", "window", "Clarion", "animation", "Windows", "vuanimatecloseblend"]
function_name: "vuAnimateCloseBlend"
category: "Window Animation"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuAnimateCloseBlend(hWindow, dwTime)

```Prototype
vuAnimateCloseBlend(LONG,LONG), Signed
```


## Description
Animates the closing of a window by blending it into the background. The animation duration is defined by `dwTime` in milliseconds.

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

vuAnimateCloseBlend(hWindow, dwTime)
```

### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is closed.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
