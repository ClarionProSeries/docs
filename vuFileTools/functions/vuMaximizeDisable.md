[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMaximizeDisable(hWindow)

```Prototype
vuMaximizeDisable(LONG), Signed
```


## Description
Disables the ability to maximize a window (by double-clicking the title bar or using the maximize button) for the specified window handle.

### Parameters

| Parameter | Data Type | Description                                                   |
|-----------|-----------|---------------------------------------------------------------|
| hWindow   | LONG      | The handle of the window for which maximize should be disabled |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
WinName = 'vuDemo3.exe'
hWindow = vuWindowHandle(WinName)

IF vuMaximizeDisable(hWindow)
  MESSAGE('Maximize disabled for window: ' & WinName)
END
```

### Notes
- Can be used on your own application window or any running window, given its handle.  
- Once maximize is disabled, it cannot be re-enabled for that program instance.  
- This function works by removing the `SC_MAXIMIZE` entry from the system menu. If the entry is missing (rare), the function will not work properly.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
