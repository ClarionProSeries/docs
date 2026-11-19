---
title: "vuFTWindowRegisterChild"
summary: "Associate a START child thread with a dimmed parent"
description: "Associate a START child thread with a dimmed parent"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-19"
---

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

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

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors.

### Example

```clarion
RegisterResult = vuFTWindowRegisterChild(0{PROP:Handle},StartedThread)
```

### Notes

Call immediately after START. Do not pass a window handle in place of a thread number. See the START guide.

See the [Window Dimming guide](../started-children.md), [Window Dimming overview](../index.md), and [Troubleshooting](../troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

See [Automatic Message Dimming](../automatic-messages.md) for the global-template setup, or [Custom Colored Message Procedures](../custom-messages.md) to import optional black, blue and red messages.
