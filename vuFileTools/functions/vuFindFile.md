---
title: "vuFindFile"
summary: "Searches for a specific file name in one or more specified locations."
description: "Searches for a specific file name in one or more specified locations. Multiple search locations can be provided by separating them with semicolons. ### Parameters ### Returns
A CSTRING containing the fully qualified path and filename of the file if found, otherwise blank. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "specified", "more", "general", "specific", "file", "Clarion", "locations", "name", "Windows", "vufindfile", "searches"]
function_name: "vuFindFile"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFindFile(FileName, LookIn)

```Prototype
vuFindFile(*CSTRING,*CSTRING), CSTRING
```


## Description
Searches for a specific file name in one or more specified locations. Multiple search locations can be provided by separating them with semicolons.

### Parameters

| Parameter | Data Type    | Description                                                   |
|-----------|--------------|---------------------------------------------------------------|
| FileName  | CSTRING(256) | Name of the file to find (wildcards not allowed)              |
| LookIn    | CSTRING(256) | One or more locations to search, separated by semicolons      |

### Returns
A CSTRING containing the fully qualified path and filename of the file if found, otherwise blank.

### Example

```Clarion
FileName = 'myfile.txt'
LookIn   = 'C:\;X:\temp'   ! Search entire C drive and temp folder on X drive

Result = vuFindFile(FileName, LookIn)

IF Result <> ''
  MESSAGE('File found at: ' & Result)
ELSE
  MESSAGE('File not found')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
