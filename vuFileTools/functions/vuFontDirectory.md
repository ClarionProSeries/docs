---
title: "vuFontDirectory"
summary: "Returns the fully qualified path of the Windows font directory."
description: "Returns the fully qualified path of the Windows font directory. ### Parameters ### Returns
The fully qualified path for the font directory. ### Example ### Notes
Use this function in conjunction with `vuFontLoad()` to install and use customized fonts. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "qualified", "path", "vufontdirectory", "font", "directory", "general", "returns", "fully", "Clarion", "Windows"]
function_name: "vuFontDirectory"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
