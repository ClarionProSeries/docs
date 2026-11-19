
[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

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

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors.

### Example

```clarion
DimResult = vuFTDimWindow(0{PROP:Handle},90)
```

### Notes

A positive result indicates success; 0 means not active where applicable; negative codes indicate an error. A call creates a dim claim that must be matched by Restore or registered START cleanup.

See the [Window Dimming guide](../manual.md), [Window Dimming overview](../index.md), and [Troubleshooting](../troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

See [Automatic Message Dimming](../automatic-messages.md) for the global-template setup, or [Custom Colored Message Procedures](../custom-messages.md) to import optional black, blue and red messages.