[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFlashWindow(hWindow, Count)

```Prototype
vuFlashWindow(Long,Long), Signed
```


## Description
Flashes the specified window (both its title bar and its taskbar button) the given number of times. The flash rate is 4 per second.

### Parameters

| Parameter | Data Type | Description                                  |
|-----------|-----------|----------------------------------------------|
| hWindow   | LONG      | Handle of the window to flash                |
| Count     | LONG      | Number of times to flash (4 per second rate) |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
hWindow = Window{PROP:Handle}   ! Assuming window label is "Window"
Count   = 8

vuFlashWindow(hWindow, Count)   ! Flash window 8 times
```

### Notes
- Requires Windows 98 or higher.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
