---
title: "vuWindowMove"
summary: "Moves any window around the screen, given its handle."
description: "Moves any window around the screen, given its handle. The move can be absolute (relative to the screen's upper-left corner) or relative to the window's current position. Optionally, the move can be animated in steps with pauses between them. ### Parameters ### Returns
Always returns `True` (1). ### Example Move a window to absolute position 100, 50 in 10 steps with 5ms pauses: Move a window 5 pixels right and 5 pixels down from its current position: ### Notes
- Use the window handle obtained with `vuWindowHandle` or `Window{PROP:Handle}`.  
- When `Relative` is set to `True`, `xPos` and `yPos` represent the offset from the current position.  
- Adding steps and pauses provides a visible animation effect. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "around", "given", "management", "moves", "screen", "handle", "window", "Clarion", "vuwindowmove", "Windows"]
function_name: "vuWindowMove"
category: "Window Management"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindowMove(hWindow, xPos, yPos, Steps, Pause, Relative)

```Prototype
vuWindowMove(Long,Long,Long,Long,Long,Long), Signed
```


## Description
Moves any window around the screen, given its handle. The move can be absolute (relative to the screen's upper-left corner) or relative to the window's current position. Optionally, the move can be animated in steps with pauses between them.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| hWindow   | LONG      | Handle of the window to move.                                               |
| xPos      | LONG      | Horizontal position (pixels) to move the windows upper-left corner to.     |
| yPos      | LONG      | Vertical position (pixels) to move the windows upper-left corner to.       |
| Steps     | LONG      | Number of incremental steps to use (for animated movement).                 |
| Pause     | LONG      | Number of milliseconds to pause between steps.                              |
| Relative  | LONG      | Set to `True` to move relative to the current position, `False` for absolute.|

### Returns
Always returns `True` (1).

### Example

Move a window to absolute position 100, 50 in 10 steps with 5ms pauses:

```Clarion
hWnd = vuWindowHandle('<My Window Name>')
vuWindowMove(hWnd, 100, 50, 10, 5, 0)
```

Move a window 5 pixels right and 5 pixels down from its current position:

```Clarion
vuWindowMove(hWnd, 5, 5, 1, 0, 1)
```

### Notes
- Use the window handle obtained with `vuWindowHandle` or `Window{PROP:Handle}`.  
- When `Relative` is set to `True`, `xPos` and `yPos` represent the offset from the current position.  
- Adding steps and pauses provides a visible animation effect.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
