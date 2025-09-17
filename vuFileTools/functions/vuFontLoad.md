[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFontLoad(FontName)

```Prototype
vuFontLoad(*CSTRING), Signed
```


## Description
Loads the specified font into the Windows font table, making it available for immediate use without requiring a reboot.

### Parameters

| Parameter | Data Type     | Description             |
|-----------|---------------|-------------------------|
| FontName  | CSTRING(128)  | Name of the font to load |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
FontName = 'Californian FB'
vuFontLoad(FontName)
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
