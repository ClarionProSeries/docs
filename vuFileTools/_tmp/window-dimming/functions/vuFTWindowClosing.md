
[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

# vuFTWindowClosing(ChildThread)

```Prototype
vuFTWindowClosing(LONG), SIGNED, PROC, PASCAL, RAW
```

## Description

Release a START child registration on window close. This function is exported by **vuFT5.dll** and declared by the vuFileTools global template.

### Parameters

| Parameter | Data type | Description |
|---|---|---|
| ChildThread | LONG | THREAD() of the child that is closing |

### Returns

The result is a signed LONG. Positive numbers indicate success or an accepted active state, 0 may indicate an inactive or unregistered state, and negative numbers indicate specific errors.

### Example

```clarion
CloseResult = vuFTWindowClosing(THREAD())
```

### Notes

Place in the started child's Close Window embed for both ABC and Legacy. Parent restores only when its final outstanding dim claim is released.

See the [Window Dimming guide](../started-children.md), [Window Dimming overview](../index.md), and [Troubleshooting](../troubleshooting.md). The EXE requires a Windows 8-or-later compatibility manifest.

[Home](../../index.md) | [Window Dimming functions](index.md) | [Window Dimming](../index.md)

See [Automatic Message Dimming](../automatic-messages.md) for the global-template setup, or [Custom Colored Message Procedures](../custom-messages.md) to import optional black, blue and red messages.