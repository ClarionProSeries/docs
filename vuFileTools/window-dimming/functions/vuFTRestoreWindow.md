---
title: "vuFTRestoreWindow"
summary: "Release one window dimming claim"
description: "Release one window dimming claim"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-19"
---

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

# vuFTRestoreWindow(hWnd)

```Prototype
vuFTRestoreWindow(LONG), SIGNED, PROC, PASCAL, RAW
```

## Description

Release one window dimming claim. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| hWnd | LONG | Same parent handle supplied to Dim |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors.

### Example

```clarion
RestoreResult = vuFTRestoreWindow(0{PROP:Handle})
```

### Notes

Restore after a synchronous call returns. Registered START children instead release their claims when Window Closing runs.

See the [Window Dimming guide](../manual.md), [Window Dimming overview](../index.md), and [Troubleshooting](../troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

See [Automatic Message Dimming](../automatic-messages.md) for the global-template setup, or [Custom Colored Message Procedures](../custom-messages.md) to import optional black, blue and red messages.
