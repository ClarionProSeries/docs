---
title: "vuExtractFilePath"
summary: "Returns the drive and path portion of a fully qualified file specification."
description: "Returns the drive and path portion of a fully qualified file specification. ### Parameters ### Returns
A null-terminated CSTRING containing the file path. Can be assigned to any Clarion string variable. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "drive", "qualified", "path", "general", "returns", "vuextractfilepath", "fully", "file", "Clarion", "specification", "Windows"]
function_name: "vuExtractFilePath"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuExtractFilePath(FileSpec)

```Prototype
vuExtractFilePath(*CSTRING), CSTRING
```


## Description
Returns the drive and path portion of a fully qualified file specification.

### Parameters

| Parameter | Data Type    | Description                                      |
|-----------|--------------|--------------------------------------------------|
| FileSpec  | CSTRING(256) | Fully qualified path and filename to extract from |

### Returns
A null-terminated CSTRING containing the file path. Can be assigned to any Clarion string variable.

### Example

```Clarion
FileSpec = 'C:\Temp\Valutilities.bak'
MESSAGE('The file path is ' & vuExtractFilePath(FileSpec))

LOC:Path = vuExtractFilePath(FileSpec)
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
