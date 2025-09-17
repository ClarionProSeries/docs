[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindow2Bmp(FileName)

```Prototype
vuWindow2Bmp(*CSTRING), Signed
```


## Description
Saves the current active window to the specified bitmap file.

### Parameters

| Parameter | Data Type     | Description                                                            |
|-----------|---------------|------------------------------------------------------------------------|
| hWnd      | LONG          | Handle of the window (use `Window{PROP:Handle}`).                      |
| FileName  | CSTRING(256)  | Fully qualified path and filename for the bitmap file (e.g., `C:\X.bmp`). |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A BYTE value:  
- `True` if the window was successfully saved.  
- `False` if the operation failed.

### Example

```Clarion
FileName = 'C:\Temp\Screen1.bmp'
IF vuWindow2Bmp(FileName)
  MESSAGE('Window was saved to ' & FileName)
ELSE
  MESSAGE('Failed to save window to bitmap file')
END
```

### Notes
- Be sure to specify a fully qualified filename, including the `.bmp` extension.  
- Captures only the current active window, not the entire desktop.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
