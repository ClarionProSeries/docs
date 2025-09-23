---
title: "vuWindowOnTop"
summary: "Brings the specified window to the front and keeps it on top until reset by `vuWindowNotOnTop`."
description: "Brings the specified window to the front and keeps it on top until reset by `vuWindowNotOnTop`. ### Parameters ### Returns
A BYTE value:  
- `True` if the window was successfully set to remain on top.  
- `False` if the operation failed. ### Example ### Notes
- Use the window handle from Clarion with the `PROP:Handle` property of the window label.  
- To find the label of a window: in the Window Formatter, right-click the window, select **Properties**, and check the value next to **Label**.  
- The demo program included with vuFileTools illustrates this technique. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "specified", "reset", "management", "vuwindownotontop", "until", "window", "Clarion", "front", "keeps", "brings", "Windows"]
function_name: "vuWindowOnTop"
category: "Window Management"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindowOnTop(hWnd)

```Prototype
vuWindowOnTop(LONG), Signed
```


## Description
Brings the specified window to the front and keeps it on top until reset by `vuWindowNotOnTop`.

### Parameters

| Parameter | Data Type | Description                                                   |
|-----------|-----------|---------------------------------------------------------------|
| hWnd      | LONG      | Handle of the window to bring to the front (`Window{PROP:Handle}`). |

### Returns
A BYTE value:  
- `True` if the window was successfully set to remain on top.  
- `False` if the operation failed.

### Example

```Clarion
IF vuWindowOnTop(Window{PROP:Handle})
  MESSAGE('Window set to stay on top')
ELSE
  MESSAGE('Failed to set window on top')
END
```

### Notes
- Use the window handle from Clarion with the `PROP:Handle` property of the window label.  
- To find the label of a window: in the Window Formatter, right-click the window, select **Properties**, and check the value next to **Label**.  
- The demo program included with vuFileTools illustrates this technique.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
