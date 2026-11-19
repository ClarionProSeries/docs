---
title: "vuFTGetDimmingEnabled"
summary: "Read current process-wide dimming state"
description: "Read current process-wide dimming state"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFTGetDimmingEnabled()

```Prototype
vuFTGetDimmingEnabled(), SIGNED, PROC, PASCAL, RAW
```

## Description

Read current process-wide dimming state. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| None | | No arguments |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors. Consult the shared Window Dimming engine status codes when diagnosing unusual failures. For this status function, 1 normally means enabled and 0 disabled.

### Example

```clarion
DimmingEnabled = vuFTGetDimmingEnabled()
```

### Notes

Normally returns 1 when enabled and 0 when disabled; a negative return indicates an initialization or runtime failure.

See the [Window Dimming guide](../window-dimming/runtime-controls.md), [Window Dimming overview](../window-dimming/index.md), and [Troubleshooting](../window-dimming/troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
