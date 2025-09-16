[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCenterWindow(hWnd)

```Prototype
vuCenterWindow(Long), Signed
```


## Description
Centers any window on the screen given its handle.

### Parameters

| Parameter | Data Type | Description                           |
|-----------|-----------|---------------------------------------|
| hWnd      | LONG      | Handle of the window to be centered   |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
wName = 'Microsoft Word'
hWnd  = vuWindowHandle(wName)

vuCenterWindow(hWnd)
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
