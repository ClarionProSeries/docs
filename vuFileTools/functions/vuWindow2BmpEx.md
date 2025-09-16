[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuWindow2BmpEx(hWindow, BMPFile)

```Prototype
vuWindow2BmpEx(LONG,*CSTRING), Signed
```


## Description
Saves any window as a bitmap file, given its window handle.

### Parameters

| Parameter | Data Type    | Description                                                             |
|-----------|--------------|-------------------------------------------------------------------------|
| hWindow   | LONG         | Handle of the window to save (use functions like `vuWindowHandle`).     |
| BMPFile   | CSTRING(128) | Fully qualified path and filename for the bitmap file to be created.    |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A BYTE value:  
- `True` if the window was successfully saved.  
- `False` if the operation failed.

### Example

```Clarion
WindowName = 'Microsoft'
BMPName    = 'BillG.bmp'
hWindow    = vuWindowHandle(WindowName)

IF vuWindow2BmpEx(hWindow, BMPName)
  MESSAGE('Saved window "' & WindowName & '" to ' & BMPName)
ELSE
  MESSAGE('Failed to save window to bitmap file')
END
```

### Notes
- Works with any window handle, not just the active window.  
- Ensure you provide a valid window handle before calling this function.  
- Always specify a fully qualified filename including the `.bmp` extension.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
