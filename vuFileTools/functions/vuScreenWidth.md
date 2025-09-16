[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuScreenWidth()

```Prototype
vuScreenWidth(), Long
```


## Description
Returns the current screen width in pixels.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value containing the current screen width (for example, 800, 1024, 1280).

### Example

```Clarion
IF vuScreenWidth() < 1024
  MESSAGE('The screen must be set to at least 1024 by 768')
END
```

### Notes
- Returns the horizontal resolution of the primary display.  
- Use together with `vuScreenHeight()` to determine full screen resolution.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
