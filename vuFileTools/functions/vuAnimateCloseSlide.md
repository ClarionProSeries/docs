---
title: "vuAnimateCloseSlide"
summary: "Animates the closing of a window by sliding in the specified direction(s)."
description: "Animates the closing of a window by sliding in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example ### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is closed. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "closing", "specified", "vuanimatecloseslide", "direction", "window", "Clarion", "animation", "Windows", "animates", "sliding"]
function_name: "vuAnimateCloseSlide"
category: "Window Animation"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuAnimateCloseSlide(hWindow, dwTime, L2R, R2L, T2B, B2T)

```Prototype
vuAnimateCloseSlide(LONG,LONG,LONG,LONG,LONG,LONG), Signed
```


## Description
Animates the closing of a window by sliding in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| hWindow   | LONG      | Handle of the window to animate                                             |
| dwTime    | LONG      | Duration of the animation in milliseconds                                   |
| L2R       | LONG      | 1 = Close window left to right. Do not set both `L2R` and `R2L`. If both are set, defaults to L2R. |
| R2L       | LONG      | 1 = Close window right to left                                              |
| T2B       | LONG      | 1 = Close window top to bottom. Do not set both `T2B` and `B2T`. If both are set, defaults to T2B. |
| B2T       | LONG      | 1 = Close window bottom to top                                              |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
hWindow = Window{PROP:Handle}
dwTime  = 200  ! default

vuAnimateCloseSlide(hWindow, dwTime, 1, 0, 1, 0)
```

### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is closed.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
