---
title: "vuScreenWidth"
summary: "Returns the current screen width in pixels."
description: "Returns the current screen width in pixels. ### Parameters ### Returns
A LONG value containing the current screen width (for example, 800, 1024, 1280). ### Example ### Notes
- Returns the horizontal resolution of the primary display.  
- Use together with `vuScreenHeight()` to determine full screen resolution. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuFileTools", "vuscreenwidth", "screen", "pixels", "general", "returns", "width", "Clarion", "Windows"]
function_name: "vuScreenWidth"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
