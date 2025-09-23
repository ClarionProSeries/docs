---
title: "vuFolderDate"
summary: "Returns the creation date of a folder in standard Clarion date format."
description: "Returns the creation date of a folder in standard Clarion date format. ### Parameters ### Returns
A LONG containing the folder creation date in standard Clarion date format. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vufolderdate", "creation", "vuFileTools", "clarion", "general", "returns", "folder", "standard", "format", "Clarion", "date", "Windows"]
function_name: "vuFolderDate"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFolderDate(FolderName)

```Prototype
vuFolderDate(*CSTRING), Long
```


## Description
Returns the creation date of a folder in standard Clarion date format.

### Parameters

| Parameter  | Data Type    | Description                         |
|------------|--------------|-------------------------------------|
| FolderName | CSTRING(256) | Fully qualified path of the folder  |

### Returns
A LONG containing the folder creation date in standard Clarion date format.

### Example

```Clarion
FolderName = 'C:\temp'
MESSAGE('Folder created on: ' & vuFolderDate(FolderName))
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
