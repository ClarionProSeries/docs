[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuScreenHeight()

```Prototype
vuScreenHeight(), Long
```


## Description
Returns the current screen height in pixels.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value containing the current screen height (for example, 600, 768, 1024).

### Example

```Clarion
IF vuScreenHeight() < 768
  MESSAGE('The screen must be set to at least 1024 by 768')
END
```

### Notes
- Returns the vertical resolution of the primary display.  
- Use together with `vuScreenWidth()` to determine full screen resolution.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
