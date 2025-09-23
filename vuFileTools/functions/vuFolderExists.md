---
title: "vuFolderExists"
summary: "Checks if a specified folder (path) exists."
description: "Checks if a specified folder (path) exists. Supports mapped drives and UNC paths. ### Parameters ### Returns
1 (True) if the folder exists, 0 (False) if it does not. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "path", "specified", "exists", "vufolderexists", "general", "folder", "Clarion", "checks", "Windows"]
function_name: "vuFolderExists"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFolderExists(PathName)

```Prototype
vuFolderExists(*CSTRING), Signed
```


## Description
Checks if a specified folder (path) exists. Supports mapped drives and UNC paths.

### Parameters

| Parameter | Data Type    | Description                               |
|-----------|--------------|-------------------------------------------|
| PathName  | CSTRING(256) | Fully qualified name of the folder to test |

### Returns
1 (True) if the folder exists, 0 (False) if it does not.

### Example

```Clarion
PathName = 'C:\Valutilities\Temp'

IF vuFolderExists(PathName) = 1
  MESSAGE('Folder exists!')
ELSE
  MESSAGE('Folder not found.')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
