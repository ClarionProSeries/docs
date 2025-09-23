---
title: "vuBIOSSerialNo"
summary: "Returns the BIOS serial number as a CSTRING (alphanumeric value)."
description: "Returns the BIOS serial number as a CSTRING (alphanumeric value).   ### Parameters ### Returns
A variable-length CSTRING representing the BIOS serial number.   ### Example ### Notes
- A window **must** be open prior to calling this function.  
- The earliest this function should be called is in the ABC chain: **Windows Events ? Open Window**.  
- Not all BIOS manufacturers support this function. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "bios", "number", "value", "serial", "general", "returns", "alphanumeric", "Clarion", "vubiosserialno", "Windows", "cstring"]
function_name: "vuBIOSSerialNo"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuBIOSSerialNo()

```Prototype
vuBIOSSerialNo(), CSTRING
```


## Description
Returns the BIOS serial number as a CSTRING (alphanumeric value).  

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A variable-length CSTRING representing the BIOS serial number.  

### Example

```Clarion
! Embed point: Windows Event / Open Window
MESSAGE('BIOS Serial Number = ' & vuBIOSSerialNo())
```

### Notes
- A window **must** be open prior to calling this function.  
- The earliest this function should be called is in the ABC chain: **Windows Events ? Open Window**.  
- Not all BIOS manufacturers support this function.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
