[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDisableOthers(NameContains, wDisable)

```Prototype
vuDisableOthers(*CSTRING,LONG), Signed
```


## Description
Disables or enables all other windows that contain the specified text in their title, based on the value of `wDisable`.

### Parameters

| Parameter    | Data Type    | Description                                                                 |
|--------------|--------------|-----------------------------------------------------------------------------|
| NameContains | CSTRING(256) | Substring to search for in window titles (e.g., "Microsoft Word"). If blank, all windows will be affected. |
| wDisable     | LONG         | 1 = Disable matching windows <br> 0 = Enable (re-enable) matching windows   |

### Returns
The number of windows that were enabled or disabled.

### Example

```Clarion
wDisable = 1
vuDisableOthers('Microsoft Word', wDisable)  ! Disables all running instances of Microsoft Word

wDisable = 0
vuDisableOthers('Microsoft Word', wDisable)  ! Re-enables all running instances of Microsoft Word
```

### Notes
- If `NameContains` is left blank, the function will apply to all windows.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
