[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindow2Front(hWnd)

```Prototype
vuWindow2Front(LONG), Signed
```


## Description
Brings the specified window to the front (on top of other windows) and activates it.

### Parameters

| Parameter | Data Type | Description                                                   |
|-----------|-----------|---------------------------------------------------------------|
| hWnd      | LONG      | Handle of the window to bring to the front (`Window{PROP:Handle}`). |

### Returns
A BYTE value:  
- `True` if the window was successfully brought to the front.  
- `False` if the operation failed.

### Example

```Clarion
IF vuWindow2Front(Window{PROP:Handle})
  MESSAGE('Window was brought to the front')
ELSE
  MESSAGE('Failed to bring window to the front')
END
```

### Notes
- The window handle can be retrieved in Clarion using the `PROP:Handle` property of the window label.  
- To find the label of a window: in the Window Formatter, right-click the window, select **Properties**, and note the value next to **Label**.  
- The demo program included with vuFileTools shows this technique in use.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
