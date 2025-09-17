[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuTransparent(hWindow, tValue)

```Prototype
vuTransparent(LONG,LONG), Signed
```


## Description
Sets the transparency level of a window, given its handle. Transparency can range from completely invisible (0) to fully opaque (255).

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| hWindow   | LONG      | Handle of the window to apply transparency to.                              |
| tValue    | LONG      | Transparency value: 0 = Invisible, 255 = Solid (opaque).                    |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
hWindow = WINDOW{PROP:Handle}  ! Get the handle of the current window
tValue  = 128                  ! Set transparency halfway

IF vuTransparent(hWindow, tValue)
  MESSAGE('Window transparency set to translucent.')
ELSE
  MESSAGE('Failed to set window transparency.')
END
```

### Notes
- Requires Windows 2000 or higher.  
- The first call to make a window transparent may cause a brief flash, but subsequent calls will not.  
- Transparency is set using Windows "Layered Window Attributes."  
- To get the window handle in Clarion, use the `PROP:Handle` property of the windows label.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
