---
title: "vuFTWindowRegisterChild"
summary: "Associate a START child thread with a dimmed parent"
description: "Associate a START child thread with a dimmed parent"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFTWindowRegisterChild(ParentHWnd, ChildThread)

```Prototype
vuFTWindowRegisterChild(LONG,LONG), SIGNED, PROC, PASCAL, RAW
```

## Description

Associate a START child thread with a dimmed parent. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| ParentHWnd | LONG | Parent window already dimmed |
| ChildThread | LONG | Thread number returned by START |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors. Consult the shared Window Dimming engine status codes when diagnosing unusual failures. 

### Example

```clarion
RegisterResult = vuFTWindowRegisterChild(0{PROP:Handle},StartedThread)
```

### Notes

Call immediately after START. Do not pass a window handle in place of a thread number. See the START guide.

See the [Window Dimming guide](../window-dimming/started-children.md), [Window Dimming overview](../window-dimming/index.md), and [Troubleshooting](../window-dimming/troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
