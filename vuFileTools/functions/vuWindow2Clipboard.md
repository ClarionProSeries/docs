[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuWindow2Clipboard()

```Prototype
vuWindow2Clipboard(), Signed
```


## Description
Saves a copy of the current active window to the clipboard.

### Parameters
This function takes no parameters.

### Returns
A BYTE value:  
- `True` if the active window was successfully copied to the clipboard.  
- `False` if the operation failed.

### Example

```Clarion
IF vuWindow2Clipboard()
  MESSAGE('Active window copied to clipboard')
ELSE
  MESSAGE('Failed to copy window to clipboard')
END
```

### Notes
- Captures only the current active window, not the entire desktop.  
- The captured window image is placed in the clipboard as a bitmap and can be pasted into applications that accept images (for example, Paint or Word).

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
