---
title: "vuFTDimWindow"
summary: "Dim a parent window using a black overlay"
description: "Dim a parent window using a black overlay"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFTDimWindow(hWnd, Strength)

```Prototype
vuFTDimWindow(LONG,LONG), SIGNED, PROC, PASCAL, RAW
```

## Description

Dim a parent window using a black overlay. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| hWnd | LONG | Handle of the parent window |
| Strength | LONG | 0 to 255 opacity |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors. Consult the shared Window Dimming engine status codes when diagnosing unusual failures. 

### Example

```clarion
DimResult = vuFTDimWindow(0{PROP:Handle},90)
```

### Notes

A positive result indicates success; 0 means not active where applicable; negative codes indicate an error. A call creates a dim claim that must be matched by Restore or registered START cleanup.

See the [Window Dimming guide](../window-dimming/manual.md), [Window Dimming overview](../window-dimming/index.md), and [Troubleshooting](../window-dimming/troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
