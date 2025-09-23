---
title: "vuFileDate"
summary: "Returns the creation, last written, or last accessed date of a specified file."
description: "Returns the creation, last written, or last accessed date of a specified file. ### Parameters ### Returns
A LONG containing the requested date in standard Clarion date format. ### Example ### Notes
- Earlier versions of this function returned the date as `YYYYMMDD`.  
- Current versions return the date in standard Clarion date format. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["creation", "vuFileTools", "specified", "written", "returns", "date", "accessed", "vufiledate", "Clarion", "system", "last", "Windows"]
function_name: "vuFileDate"
category: "File System"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFileDate(Filename, Type)

```Prototype
vuFileDate(*CSTRING,LONG), LONG
```


## Description
Returns the creation, last written, or last accessed date of a specified file.

### Parameters

| Parameter | Data Type    | Description                                                    |
|-----------|--------------|----------------------------------------------------------------|
| Filename  | CSTRING(256) | Fully qualified path and filename of an existing file          |
| Type      | LONG         | 1 = Creation Date <br> 2 = Last Written Date <br> 3 = Last Accessed Date |

### Returns
A LONG containing the requested date in standard Clarion date format.

### Example

```Clarion
Filename = 'C:\Temp\valutilities.bak'
Message('Last written date = ' & vuFileDate(Filename, 2))
```

### Notes
- Earlier versions of this function returned the date as `YYYYMMDD`.  
- Current versions return the date in standard Clarion date format.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
