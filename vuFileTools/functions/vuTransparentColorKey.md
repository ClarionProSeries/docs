[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuTransparentColorKey(hWindow, Red, Green, Blue)

```Prototype
vuTransparentColorKey(LONG,LONG,LONG,LONG), Signed
```


## Description
Makes a specific color in a window transparent, given its handle and the RGB color components. This allows parts of the window to appear see-through where the chosen color is displayed.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| hWindow   | LONG      | Handle of the target window.                                                |
| Red       | LONG      | Red component of the transparent color (0255).                             |
| Green     | LONG      | Green component of the transparent color (0255).                           |
| Blue      | LONG      | Blue component of the transparent color (0255).                            |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
hWindow = WINDOW{PROP:Handle}  ! Get the handle of the current window
Red     = 255
Green   = 255
Blue    = 255

IF vuTransparentColorKey(hWindow, Red, Green, Blue)
  MESSAGE('White areas of the window are now transparent.')
ELSE
  MESSAGE('Failed to apply color key transparency.')
END
```

### Notes
- Requires Windows 2000 or higher.  
- If the background color is set as transparent, any text or graphics drawn on the surface appear to be written directly on the desktop.  
- The Demo3 application includes a working example under the Mailslots tab.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
