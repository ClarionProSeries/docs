---
title: "vuCreateDirectory"
summary: "Creates an entire directory path in one command."
description: "Creates an entire directory path in one command. Any number of subdirectories can be included in `FilePath`. ### Parameters ### Returns
The number of directories actually created. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["command", "vuFileTools", "creates", "path", "directory", "general", "entire", "Clarion", "vucreatedirectory", "Windows"]
function_name: "vuCreateDirectory"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCreateDirectory(FilePath)

```Prototype
vuCreateDirectory(*CSTRING), Signed
```


## Description
Creates an entire directory path in one command. Any number of subdirectories can be included in `FilePath`.

### Parameters

| Parameter | Data Type    | Description                                   |
|-----------|--------------|-----------------------------------------------|
| FilePath  | CSTRING(256) | Fully qualified path including subdirectories |

### Returns
The number of directories actually created.

### Example

```Clarion
! Assume C:\Temp already exists
FilePath = 'C:\Temp\Temp1\Temp2\Temp3'
DirsMade = vuCreateDirectory(FilePath)
MESSAGE('Created ' & DirsMade & ' directories.')
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
