[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFontDirectory()

```Prototype
vuFontDirectory(), CSTRING
```


## Description
Returns the fully qualified path of the Windows font directory.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
The fully qualified path for the font directory.

### Example

```Clarion
MESSAGE('All fonts are stored in ' & vuFontDirectory())
```

### Notes
Use this function in conjunction with `vuFontLoad()` to install and use customized fonts.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
