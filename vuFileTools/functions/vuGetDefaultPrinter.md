---
title: "vuGetDefaultPrinter"
summary: "Returns the name of the PCs default printer."
description: "Returns the name of the PCs default printer. Note that this may not match the printer currently selected by Clarion or the Report Writer. ### Parameters ### Returns
A CSTRING containing the name of the default printer. ### Example ### Notes
- Requires Windows 2000 or higher.  
- The returned printer is the system default, not necessarily the one chosen for Clarion reports. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "general", "returns", "default", "Clarion", "vugetdefaultprinter", "name", "Windows", "printer"]
function_name: "vuGetDefaultPrinter"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetDefaultPrinter()

```Prototype
vuGetDefaultPrinter(), CSTRING
```


## Description
Returns the name of the PCs default printer. Note that this may not match the printer currently selected by Clarion or the Report Writer.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A CSTRING containing the name of the default printer.

### Example

```Clarion
MESSAGE('The default printer is ' & vuGetDefaultPrinter())
```

### Notes
- Requires Windows 2000 or higher.  
- The returned printer is the system default, not necessarily the one chosen for Clarion reports.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
