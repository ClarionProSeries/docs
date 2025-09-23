---
title: "vuPrinterName"
summary: "Returns the name of the printer defined by the specified index."
description: "Returns the name of the printer defined by the specified index. ### Parameters ### Returns
A CSTRING containing the name of the indexed printer. ### Example ### Notes
- Use `vuPrinterCount()` to determine the number of installed printers and the valid index range.  
- Useful for populating UI elements such as list boxes with installed printer names. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["index", "vuFileTools", "specified", "name", "general", "returns", "defined", "Clarion", "vuprintername", "Windows", "printer"]
function_name: "vuPrinterName"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrinterName(Nmbr)

```Prototype
vuPrinterName(LONG), CSTRING
```


## Description
Returns the name of the printer defined by the specified index.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| Nmbr      | LONG      | The index of the printer to query (use `vuPrinterCount()` to determine the valid range). |

### Returns
A CSTRING containing the name of the indexed printer.

### Example

```Clarion
FREE(PrinterNames)

vPCount = vuPrinterCount()
LOOP vCounter = 1 TO vPCount
  P:Name = vuPrinterName(vCounter)
  ADD(PrinterNames)
END
```

### Notes
- Use `vuPrinterCount()` to determine the number of installed printers and the valid index range.  
- Useful for populating UI elements such as list boxes with installed printer names.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
