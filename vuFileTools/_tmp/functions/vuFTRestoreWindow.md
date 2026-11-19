
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors. Consult the shared Window Dimming engine status codes when diagnosing unusual failures. 

### Example

```clarion
RestoreResult = vuFTRestoreWindow(0{PROP:Handle})
```

### Notes

Restore after a synchronous call returns. Registered START children instead release their claims when Window Closing runs.

See the [Window Dimming guide](../window-dimming/manual.md), [Window Dimming overview](../window-dimming/index.md), and [Troubleshooting](../window-dimming/troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)