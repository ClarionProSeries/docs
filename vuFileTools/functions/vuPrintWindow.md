---
title: "vuPrintWindow"
summary: "Prints the current active window (not the entire desktop)."
description: "Prints the current active window (not the entire desktop). ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- Requires Windows 98 SE or higher.  
- The user will be prompted to select a printer. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuFileTools", "prints", "general", "active", "vuprintwindow", "Clarion", "window", "entire", "desktop", "Windows"]
function_name: "vuPrintWindow"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintWindow()

```Prototype
vuPrintWindow(), Signed
```


## Description
Prints the current active window (not the entire desktop).

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
IF vuPrintWindow()
  MESSAGE('Current window sent to printer.')
ELSE
  MESSAGE('Print window failed.')
END
```

### Notes
- Requires Windows 98 SE or higher.  
- The user will be prompted to select a printer.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
