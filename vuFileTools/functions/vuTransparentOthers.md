[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuTransparentOthers(NameContains, Transparency)

```Prototype
vuTransparentOthers(*CSTRING,LONG), Signed
```


## Description
Sets the layered window attribute on all other running windows whose primary title contains `NameContains`, and applies the specified transparency level.

### Parameters

| Parameter    | Data Type    | Description                                                                 |
|--------------|--------------|-----------------------------------------------------------------------------|
| NameContains | CSTRING(256) | Blank, partial, or full window title to search for.                         |
| Transparency | LONG         | Transparency level from 0 to 255 (0 = invisible, 255 = opaque).             |

### Returns
A LONG value containing the number of windows found that matched the criteria.

### Example

```Clarion
NameContains = 'Notepad'
Transparency = 128

Count = vuTransparentOthers(NameContains, Transparency)
MESSAGE('Made ' & Count & ' Notepad windows semi-transparent.')
```

### Notes
- Requires Windows 2000 or higher.
- The first call on a visible window may cause a brief flash. Subsequent calls should not flash.
- Uses Windows layered window attributes to apply per-window alpha.
- If `NameContains` is blank, the function will target all other running windows. Use with caution.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
