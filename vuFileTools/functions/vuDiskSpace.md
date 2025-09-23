---
title: "vuDiskSpace"
summary: "Returns the actual size of the specified disk in bytes."
description: "Returns the actual size of the specified disk in bytes. Unlike older APIs, this function is not limited to 2 GB.   Since Clarion has difficulty with very large integers, the value is returned as a formatted string (e.g., `123,456,789`). Use the Clarion `DEFORMAT` command to extract numeric values if needed. ### Parameters ### Returns
A null-terminated CSTRING containing the size of the drive in bytes (formatted with commas). ### Example ### Notes
- Works with any size disk (no 2 GB limit).  
- Requires Windows 98 or higher.  
- Use `DEFORMAT` to convert the returned string into a numeric value for calculations. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "bytes", "specified", "general", "returns", "size", "actual", "Clarion", "Windows", "vudiskspace", "disk"]
function_name: "vuDiskSpace"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDiskSpace(Drive)

```Prototype
vuDiskSpace(*CSTRING), CSTRING
```


## Description
Returns the actual size of the specified disk in bytes. Unlike older APIs, this function is not limited to 2 GB.  

Since Clarion has difficulty with very large integers, the value is returned as a formatted string (e.g., `123,456,789`). Use the Clarion `DEFORMAT` command to extract numeric values if needed.

### Parameters

| Parameter | Data Type   | Description                   |
|-----------|-------------|-------------------------------|
| Drive     | CSTRING(2)  | Drive letter (e.g., `'C'`)    |

### Returns
A null-terminated CSTRING containing the size of the drive in bytes (formatted with commas).

### Example

```Clarion
LOC:Size  REAL
LOC:Drive = 'C'

LOC:Size = DEFORMAT(vuDiskSpace(LOC:Drive))
MESSAGE('C Drive is ' & vuDiskSpace(LOC:Drive) & ' bytes')
```

### Notes
- Works with any size disk (no 2 GB limit).  
- Requires Windows 98 or higher.  
- Use `DEFORMAT` to convert the returned string into a numeric value for calculations.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
