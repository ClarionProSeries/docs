---
title: "vuFTDimWindowEx"
summary: "Dim a parent window with RGB color and strength"
description: "Dim a parent window with RGB color and strength"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFTDimWindowEx(hWnd, Strength, Red, Green, Blue)

```Prototype
vuFTDimWindowEx(LONG,LONG,LONG,LONG,LONG), SIGNED, PROC, PASCAL, RAW
```

## Description

Dim a parent window with RGB color and strength. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| hWnd | LONG | Handle of the parent window |
| Strength | LONG | 0 to 255 opacity |
| Red | LONG | 0 to 255 red component |
| Green | LONG | 0 to 255 green component |
| Blue | LONG | 0 to 255 blue component |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors. Consult the shared Window Dimming engine status codes when diagnosing unusual failures. 

### Example

```clarion
DimResult = vuFTDimWindowEx(0{PROP:Handle},90,0,180,0)
```

### Notes

The overlay uses red, green and blue components, not a single Clarion COLOR integer. For custom COLOR picker conversions, use BAND/BSHIFT as the accepted template does.

See the [Window Dimming guide](../window-dimming/appearance.md), [Window Dimming overview](../window-dimming/index.md), and [Troubleshooting](../window-dimming/troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
