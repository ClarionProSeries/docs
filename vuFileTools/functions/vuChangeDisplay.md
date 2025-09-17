[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuChangeDisplay(Depth, Width, Height, Action)

```Prototype
vuChangeDisplay(LONG,LONG,LONG,LONG), Signed
```


## Description
Tests or dynamically changes the PCs display settings (width, height, and color depth). This function ensures only supported settings are applied. Unsupported combinations of width, height, depth, or refresh rate will return a failure. Use this function to set screen resolution and restore it when your program exits.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| Depth     | LONG      | Desired color depth in bits (8, 16, 24, or 32)                             |
| Width     | LONG      | Desired screen width (e.g., 800, 1024)                                     |
| Height    | LONG      | Desired screen height (e.g., 600, 768)                                     |
| Action    | LONG      | 0 = Change dynamically (do not save) <br> 1 = Change dynamically and make permanent <br> 2 = Test if settings are valid <br> 99 = Restore original mode (valid only if original action was 0) |

### Returns
- 0 = Change failed (invalid or unsupported parameters)  
- 1 = Change successful  
- 2 = Change successful, but reboot required  

### Examples

```Clarion
! Change display at program start
IF vuChangeDisplay(24, 1024, 768, 0) = 1
  MESSAGE('Screen changed to 1024x768 True Color')
END

! Restore display at program end
IF vuChangeDisplay(0, 0, 0, 99) = 1
  MESSAGE('Screen restored to original settings')
END
```

### Notes
- Restore is valid only if the original action was 0.  
- If the original action was 1, changes are permanent.  
- On systems that forbid dynamic screen changes, the function may return 2 (reboot required).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
