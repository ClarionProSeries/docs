---
title: "vuFolderExists"
summary: "Checks if a specified folder (path) exists."
description: "Checks if a specified folder (path) exists. Supports mapped drives and UNC paths. ### Parameters ### Returns
Nonzero (True) if the folder exists, 0 (False) if it does not. Test for nonzero rather than comparing with the literal value `1`. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "path", "specified", "exists", "vufolderexists", "general", "folder", "Clarion", "checks", "Windows"]
function_name: "vuFolderExists"
category: "General"
version_added: "5.0"
last_updated: "2026-10-26"
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
| PathName  | CSTRING(1024) | Fully qualified name of the folder to test |

### Returns
Nonzero (True) if the folder exists, 0 (False) if it does not. Test for nonzero rather than comparing with the literal value `1`.

### Example

```Clarion
PathName = 'C:\Valutilities\Temp'

IF vuFolderExists(PathName) <> 0
  MESSAGE('Folder exists!')
ELSE
  MESSAGE('Folder not found.')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
