[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFadeIn(hWindow)

```Prototype
vuFadeIn(Long), Signed
```


## Description
Fades in a window over approximately one second when first opened. Typically used together with `vuTransparent` and `vuFadeOut` for full fade-in/fade-out effects.

### Parameters

| Parameter | Data Type | Description                         |
|-----------|-----------|-------------------------------------|
| hWindow   | LONG      | Handle of the window to fade in     |

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
- The window may flash the first time this function is called, but subsequent calls (or other transparent functions) will not.  
- The window handle is retrieved in Clarion using the `PROP:Handle` property of the windows label.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
