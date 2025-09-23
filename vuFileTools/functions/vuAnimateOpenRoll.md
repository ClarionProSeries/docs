---
title: "vuAnimateOpenRoll"
summary: "Animates the opening of a window, rolling in the specified direction(s)."
description: "Animates the opening of a window, rolling in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example ### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is opened. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "vuanimateopenroll", "specified", "rolling", "direction", "window", "Clarion", "animation", "Windows", "animates", "opening"]
function_name: "vuAnimateOpenRoll"
category: "Window Animation"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuAnimateOpenRoll(hWindow, dwTime, L2R, R2L, T2B, B2T)

```Prototype
vuAnimateOpenRoll(LONG,LONG,LONG,LONG,LONG,LONG), Signed
```


## Description
Animates the opening of a window, rolling in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| hWindow   | LONG      | Handle of the window to animate                                             |
| dwTime    | LONG      | Duration of the animation in milliseconds                                   |
| L2R       | LONG      | 1 = Open window left to right. Do not set both `L2R` and `R2L`. If both are set, defaults to L2R. |
| R2L       | LONG      | 1 = Open window right to left                                               |
| T2B       | LONG      | 1 = Open window top to bottom. Do not set both `T2B` and `B2T`. If both are set, defaults to T2B. |
| B2T       | LONG      | 1 = Open window bottom to top                                               |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
hWindow = Window{PROP:Handle}
dwTime  = 200  ! default

vuAnimateOpenRoll(hWindow, dwTime, 1, 0, 1, 0)
```

### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is opened.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
