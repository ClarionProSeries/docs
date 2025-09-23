---
title: "vuCRC32"
summary: "Calculates a 32-bit CRC (Cyclic Redundancy Check) for the provided parameter."
description: "Calculates a 32-bit CRC (Cyclic Redundancy Check) for the provided parameter. If the parameter is a valid file path, the CRC is calculated on the file contents. Otherwise, the CRC is calculated on the provided value. ### Parameters ### Returns
A ULONG containing the CRC32 value. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "cyclic", "vucrc", "general", "redundancy", "check", "Clarion", "provided", "calculates", "parameter", "Windows"]
function_name: "vuCRC32"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCRC32(Filename)

```Prototype
vuCRC32(*CSTRING), LONG
```


## Description
Calculates a 32-bit CRC (Cyclic Redundancy Check) for the provided parameter. If the parameter is a valid file path, the CRC is calculated on the file contents. Otherwise, the CRC is calculated on the provided value.

### Parameters

| Parameter | Data Type     | Description                                                                 |
|-----------|---------------|-----------------------------------------------------------------------------|
| Filename  | CSTRING(512)  | Fully qualified file path (drive, path, filename) or a value to calculate CRC against |

### Returns
A ULONG containing the CRC32 value.

### Example

```Clarion
LOC:FileName = 'C:\Valutilities\Test.tps'
MESSAGE('CRC32 = ' & vuCRC32(LOC:FileName))
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
