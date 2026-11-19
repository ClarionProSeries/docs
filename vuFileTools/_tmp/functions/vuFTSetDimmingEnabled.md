
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors. Consult the shared Window Dimming engine status codes when diagnosing unusual failures. 

### Example

```clarion
Result = vuFTSetDimmingEnabled(0)
```

### Notes

Runtime control is process-local. You can save the preference separately in your application's settings.

See the [Window Dimming guide](../window-dimming/runtime-controls.md), [Window Dimming overview](../window-dimming/index.md), and [Troubleshooting](../window-dimming/troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)