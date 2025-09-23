---
title: "vuTempPath"
summary: "Returns the path to the Windows temporary directory."
description: "Returns the path to the Windows temporary directory. ### Parameters ### Returns
A CSTRING containing the fully qualified path to the Windows temporary directory. ### Example ### Notes
- The returned path typically points to a location such as `C:\Users\<User>\AppData\Local\Temp`.  
- Useful for creating and storing temporary files. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "path", "vutemppath", "directory", "temporary", "general", "returns", "Clarion", "Windows"]
function_name: "vuTempPath"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuTempPath()

```Prototype
vuTempPath(), CSTRING
```


## Description
Returns the path to the Windows temporary directory.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the fully qualified path to the Windows temporary directory.

### Example

```Clarion
MESSAGE('The Windows temp directory is ' & vuTempPath())
```

### Notes
- The returned path typically points to a location such as `C:\Users\<User>\AppData\Local\Temp`.  
- Useful for creating and storing temporary files.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
