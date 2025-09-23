---
title: "vuScreenHeight"
summary: "Returns the current screen height in pixels."
description: "Returns the current screen height in pixels. ### Parameters ### Returns
A LONG value containing the current screen height (for example, 600, 768, 1024). ### Example ### Notes
- Returns the vertical resolution of the primary display.  
- Use together with `vuScreenWidth()` to determine full screen resolution. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "height", "vuFileTools", "screen", "pixels", "general", "vuscreenheight", "returns", "Clarion", "Windows"]
function_name: "vuScreenHeight"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
