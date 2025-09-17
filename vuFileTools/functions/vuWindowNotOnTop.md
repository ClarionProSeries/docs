[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindowNotOnTop(hWnd)

```Prototype
vuWindowNotOnTop(LONG), Signed
```


## Description
Returns the specified window to its normal display order (resets the effect of `vuWindowOnTop`).

### Parameters

| Parameter | Data Type | Description                                                   |
|-----------|-----------|---------------------------------------------------------------|
| hWnd      | LONG      | Handle of the window to reset (`Window{PROP:Handle}`).         |

### Returns
A BYTE value:  
- `True` if the window was successfully reset to normal order.  
- `False` if the operation failed.

### Example

```Clarion
IF vuWindowNotOnTop(Window{PROP:Handle})
  MESSAGE('Window restored to normal display order')
ELSE
  MESSAGE('Failed to reset window display order')
END
```

### Notes
- Use the window handle from Clarion with the `PROP:Handle` property of the window label.  
- To find the label of a window: in the Window Formatter, right-click the window, select **Properties**, and check the value next to **Label**.  
- The demo program included with vuFileTools illustrates this technique.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
