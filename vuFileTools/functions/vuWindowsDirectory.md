---
title: "vuWindowsDirectory"
summary: "Returns the path of the Windows directory."
description: "Returns the path of the Windows directory. ### Parameters
This function takes no parameters. ### Returns
A STRING containing the full path of the Windows directory. ### Example ### Notes
- The return value is the full path to the Windows system directory (for example, `C:\Windows`).  
- Useful for locating system files or ensuring application compatibility with system paths. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "vuwindowsdirectory", "path", "management", "directory", "returns", "window", "Clarion", "Windows"]
function_name: "vuWindowsDirectory"
category: "Window Management"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindowsDirectory()

```Prototype
vuWindowsDirectory(), CSTRING
```


## Description
Returns the path of the Windows directory.

### Parameters
This function takes no parameters.

### Returns
A STRING containing the full path of the Windows directory.

### Example

```Clarion
MESSAGE('The Windows directory is ' & vuWindowsDirectory())
```

### Notes
- The return value is the full path to the Windows system directory (for example, `C:\Windows`).  
- Useful for locating system files or ensuring application compatibility with system paths.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
