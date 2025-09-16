[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuAnimateCloseCenter(hWindow, dwTime)

```Prototype
vuAnimateCloseCenter(LONG,LONG), Signed
```


## Description
Animates the closing of a window from the center outward. The animation duration is defined by `dwTime` in milliseconds.

### Parameters

| Parameter | Data Type | Description                                    |
|-----------|-----------|------------------------------------------------|
| hWindow   | LONG      | Handle of the window to animate                |
| dwTime    | LONG      | Duration of the animation in milliseconds      |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
hWindow = Window{PROP:Handle}
dwTime  = 200  ! default

vuAnimateCloseCenter(hWindow, dwTime)
```

### Notes
- Requires Windows 2000 or higher.  
- The animation only needs to be set once before the window is closed.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
