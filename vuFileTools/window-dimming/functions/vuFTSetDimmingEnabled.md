---
title: "vuFTSetDimmingEnabled"
summary: "Enable or disable visible window dimming at runtime"
description: "Enable or disable visible window dimming at runtime"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-19"
---

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

# vuFTSetDimmingEnabled(Enabled)

```Prototype
vuFTSetDimmingEnabled(LONG), SIGNED, PROC, PASCAL, RAW
```

## Description

Enable or disable visible window dimming at runtime. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| Enabled | LONG | 1 to enable, 0 to disable |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors.

### Example

```clarion
Result = vuFTSetDimmingEnabled(0)
```

### Notes

Runtime control is process-local. You can save the preference separately in your application's settings.

See the [Window Dimming guide](../runtime-controls.md), [Window Dimming overview](../index.md), and [Troubleshooting](../troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

See [Automatic Message Dimming](../automatic-messages.md) for the global-template setup, or [Custom Colored Message Procedures](../custom-messages.md) to import optional black, blue and red messages.
