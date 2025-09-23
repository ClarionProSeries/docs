---
title: "vuCPUSerialNo"
summary: "Returns the CPU serial number."
description: "Returns the CPU serial number. Valid only for Intel Pentium III processors. On Pentium IV and newer, a consistent number may be returned, but it is not the actual CPU serial number and is not guaranteed to be unique. ### Parameters ### Returns
A null-terminated CSTRING containing the CPU serial number.   ### Example ### Notes
- Only Pentium III processors return a valid serial number.  
- On Pentium IV processors, the returned value is not the CPU serial number and may not be unique.  
- This function may be disabled in BIOS or by system configuration. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "number", "serial", "general", "returns", "Clarion", "Windows", "vucpuserialno"]
function_name: "vuCPUSerialNo"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCPUSerialNo()

```Prototype
vuCPUSerialNo(), CSTRING
```


## Description
Returns the CPU serial number. Valid only for Intel Pentium III processors. On Pentium IV and newer, a consistent number may be returned, but it is not the actual CPU serial number and is not guaranteed to be unique.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A null-terminated CSTRING containing the CPU serial number.  

### Example

```Clarion
MESSAGE('CPU Serial Number = ' & vuCPUSerialNo())
```

### Notes
- Only Pentium III processors return a valid serial number.  
- On Pentium IV processors, the returned value is not the CPU serial number and may not be unique.  
- This function may be disabled in BIOS or by system configuration.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
