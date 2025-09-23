---
title: "vuDiskSerialNo"
summary: "Returns the volume serial number of the root directory on the C: drive."
description: "Returns the volume serial number of the root directory on the C: drive. While commonly used for software licensing, note that serial numbers are not guaranteed to be unique. ### Parameters ### Returns
LONG containing the serial number of the C: drive volume. ### Example ### Notes
- Serial numbers are not guaranteed to be unique.  
- For example, mirrored drives will share the same serial number. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "number", "drive", "directory", "serial", "volume", "root", "general", "returns", "Clarion", "Windows", "vudiskserialno"]
function_name: "vuDiskSerialNo"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDiskSerialNo()

```Prototype
vuDiskSerialNo(), Long
```


## Description
Returns the volume serial number of the root directory on the C: drive. While commonly used for software licensing, note that serial numbers are not guaranteed to be unique.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
LONG containing the serial number of the C: drive volume.

### Example

```Clarion
MESSAGE('The serial number of the hard drive is ' & vuDiskSerialNo())
```

### Notes
- Serial numbers are not guaranteed to be unique.  
- For example, mirrored drives will share the same serial number.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
