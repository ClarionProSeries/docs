[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMoveDisable(hWindow)

```Prototype
vuMoveDisable(LONG), Signed
```


## Description
Disables the ability to move a window, given its handle.

### Parameters

| Parameter | Data Type | Description                                               |
|-----------|-----------|-----------------------------------------------------------|
| hWindow   | LONG      | The handle of the window for which move should be disabled |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
WinName = 'vuDemo3.exe'
hWindow = vuWindowHandle(WinName)

IF vuMoveDisable(hWindow)
  MESSAGE('Move disabled for window: ' & WinName)
END
```

### Notes
- Can be used on your own application window or any running window, given its handle.  
- Once move is disabled, it cannot be re-enabled for that program instance.  
- This function works by removing the `SC_MOVE` entry from the system menu. If the entry is missing (rare), the function will not work properly.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
