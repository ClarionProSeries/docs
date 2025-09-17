[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCloseDisable(hWindow)

```Prototype
vuCloseDisable(LONG), Signed
```


## Description
Disables the ability to close a window by removing the Close (X) button, given the window handle.

### Parameters

| Parameter | Data Type | Description                                 |
|-----------|-----------|---------------------------------------------|
| hWindow   | LONG      | Handle of the window to disable Close on    |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
WinName = 'vuDemo3.exe'
hWindow = vuWindowHandle(WinName)

vuCloseDisable(hWindow)
```

### Notes
- Can be used with your own window or any running window (given its handle).  
- Once disabled, Close cannot be re-enabled for that instance of the program.  
- Works by removing the `SC_CLOSE` entry from the system menu. If this entry is missing (rare), the function will not work properly.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
