---
title: "vuFolderTime"
summary: "Returns the creation time of a folder in standard Clarion time format."
description: "Returns the creation time of a folder in standard Clarion time format. ### Parameters ### Returns
A LONG containing the folder creation time in standard Clarion time format. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["creation", "vuFileTools", "clarion", "general", "returns", "folder", "standard", "vufoldertime", "format", "Clarion", "Windows", "time"]
function_name: "vuFolderTime"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFolderTime(FolderName)

```Prototype
vuFolderTime(*CSTRING), Long
```


## Description
Returns the creation time of a folder in standard Clarion time format.

### Parameters

| Parameter  | Data Type    | Description                         |
|------------|--------------|-------------------------------------|
| FolderName | CSTRING(256) | Fully qualified path of the folder  |

### Returns
A LONG containing the folder creation time in standard Clarion time format.

### Example

```Clarion
FolderName = 'C:\temp'
MESSAGE('Folder created at: ' & vuFolderTime(FolderName))
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
