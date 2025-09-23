---
title: "vuFontLoad"
summary: "Loads the specified font into the Windows font table, making it available for immediate use without requiring a reboot."
description: "Loads the specified font into the Windows font table, making it available for immediate use without requiring a reboot. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "loads", "into", "making", "font", "table", "specified", "requiring", "without", "available", "immediate"]
function_name: "vuFontLoad"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

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
