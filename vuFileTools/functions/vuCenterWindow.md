---
title: "vuCenterWindow"
summary: "Centers any window on the screen given its handle."
description: "Centers any window on the screen given its handle. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "given", "handle", "screen", "general", "window", "Clarion", "centers", "Windows", "vucenterwindow"]
function_name: "vuCenterWindow"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCenterWindow(hWnd)

```Prototype
vuCenterWindow(Long), Signed
```


## Description
Centers any window on the screen given its handle.

### Parameters

| Parameter | Data Type | Description                           |
|-----------|-----------|---------------------------------------|
| hWnd      | LONG      | Handle of the window to be centered   |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
wName = 'Microsoft Word'
hWnd  = vuWindowHandle(wName)

vuCenterWindow(hWnd)
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
