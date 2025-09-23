---
title: "vuFontUnload"
summary: "Unloads the specified font from the Windows font table, making it unavailable for use until reboot or reinstallation."
description: "Unloads the specified font from the Windows font table, making it unavailable for use until reboot or reinstallation. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "vufontunload", "making", "font", "table", "specified", "reinstallation", "from", "general", "until", "unloads"]
function_name: "vuFontUnload"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
