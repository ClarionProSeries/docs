---
title: "vuDiskLabel"
summary: "Returns the volume label of the root directory of the C: drive."
description: "Returns the volume label of the root directory of the C: drive. ### Parameters ### Returns
A null-terminated CSTRING containing the disk label of the C: drive. ### Example ### Notes
- The return value can be assigned to any Clarion string variable.  
- Only the C: drive is supported by this function.   ChatG [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vudisklabel", "label", "vuFileTools", "drive", "directory", "volume", "root", "general", "returns", "Clarion", "Windows"]
function_name: "vuDiskLabel"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDiskLabel()

```Prototype
vuDiskLabel(), CSTRING
```


## Description
Returns the volume label of the root directory of the C: drive.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A null-terminated CSTRING containing the disk label of the C: drive.

### Example

```Clarion
MESSAGE('The C: drive label is: ' & vuDiskLabel())

LOC:Label = vuDiskLabel()
```

### Notes
- The return value can be assigned to any Clarion string variable.  
- Only the C: drive is supported by this function.  


ChatG

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
