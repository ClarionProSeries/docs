[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFontUnload(FontName)

```Prototype
vuFontUnload(*CSTRING), Signed
```


## Description
Unloads the specified font from the Windows font table, making it unavailable for use until reboot or reinstallation.

### Parameters

| Parameter | Data Type     | Description                |
|-----------|---------------|----------------------------|
| FontName  | CSTRING(128)  | Name of the font to unload |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
FontName = 'Californian FB'
vuFontUnload(FontName)
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
