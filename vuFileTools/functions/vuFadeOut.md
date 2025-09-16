[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFadeOut(hWindow)

```Prototype
vuFadeOut(Long), Signed
```


## Description
Fades out a window over approximately one second when it is being closed. Typically used together with `vuTransparent` and `vuFadeIn` for full fade-in/fade-out effects.

### Parameters

| Parameter | Data Type | Description                         |
|-----------|-----------|-------------------------------------|
| hWindow   | LONG      | Handle of the window to fade out    |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
! In Window.Init embed point (after opening the window)
hWindow = Window{PROP:Handle}
vuTransparent(hWindow, 0)

! In Window Events / Open Window embed point (after generated code)
vuFadeIn(hWindow)

! In Window Events / Close Window embed point (before generated code)
vuFadeOut(hWindow)
```

### Notes
- Requires Windows 2000 or higher.  
- A window may flash the first time this function is called, but subsequent calls (or other transparency functions) will not.  
- The window handle is retrieved in Clarion using the `PROP:Handle` property of the windows label.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
