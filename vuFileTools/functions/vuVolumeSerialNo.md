---
title: "vuVolumeSerialNo"
summary: "Returns the volume serial number of the specified root directory."
description: "Returns the volume serial number of the specified root directory. Supports both mapped drives and UNC paths. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A LONG integer containing the volume serial number of the specified root directory. ### Example ### Notes
- Works with both local drives and network shares.  
- Ensure `tDir` points to a valid root directory. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "number", "specified", "vuvolumeserialno", "directory", "serial", "volume", "root", "general", "returns", "Clarion", "Windows"]
function_name: "vuVolumeSerialNo"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuVolumeSerialNo(tDir)

```Prototype
vuVolumeSerialNo(*CSTRING), LONG
```


## Description
Returns the volume serial number of the specified root directory. Supports both mapped drives and UNC paths.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| tDir      | CSTRING(128) | Path to the root directory (for example, `G:\` or `\\MyServer\C\`).         |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG integer containing the volume serial number of the specified root directory.

### Example

```Clarion
tDir = 'G:\'
SerialNo = vuVolumeSerialNo(tDir)
MESSAGE('The volume serial number of ' & tDir & ' is ' & SerialNo)
```

### Notes
- Works with both local drives and network shares.  
- Ensure `tDir` points to a valid root directory.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
