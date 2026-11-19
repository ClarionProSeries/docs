
[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

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

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors.  For this status function, 1 normally means enabled and 0 disabled.

### Example

```clarion
DimmingEnabled = vuFTGetDimmingEnabled()
```

### Notes

Normally returns 1 when enabled and 0 when disabled; a negative return indicates an initialization or runtime failure.

See the [Window Dimming guide](../runtime-controls.md), [Window Dimming overview](../index.md), and [Troubleshooting](../troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

See [Automatic Message Dimming](../automatic-messages.md) for the global-template setup, or [Custom Colored Message Procedures](../custom-messages.md) to import optional black, blue and red messages.