---
title: "vuGetDriveSpace"
summary: "Retrieves free and total space for a specified drive and returns the result as a formatted string."
description: "Retrieves free and total space for a specified drive and returns the result as a formatted string.  
Supports multiple output formats including raw bytes, comma-separated, gigabytes, and hybrid format. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A CSTRING containing the free and total space in the format specified. ### Example Notes The raw format provides values in bytes separated by /. GB format rounds values to gigabytes with suffix. Hybrid format shows both GB and raw bytes. Works with local, removable, and network drives. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["string", "vuFileTools", "space", "Clarion", "drive", "specified", "free", "retrieves", "formatted", "general", "returns", "result"]
function_name: "vuGetDriveSpace"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetDriveSpace(tDir, FormatType)

```Prototype
vuGetDriveSpace(*CSTRING,LONG), CSTRING
```


## Description
Retrieves free and total space for a specified drive and returns the result as a formatted string.  
Supports multiple output formats including raw bytes, comma-separated, gigabytes, and hybrid format.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| tDir        | CSTRING(128) | Root path of the drive (for example, `C:\`).                                |
| FormatType  | LONG         | Format for returned string:<br>0 = Raw bytes<br>1 = Comma separated<br>2 = GB<br>3 = Hybrid |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A CSTRING containing the free and total space in the format specified.

### Example

```Clarion
sRootPath CSTRING(4)
sRaw      CSTRING(128)
sComma    CSTRING(128)
sGB       CSTRING(128)
sHybrid   CSTRING(128)
sMsg      STRING(512)

  CODE
  sRootPath = 'C:\'

  sRaw     = vuGetDriveSpace(sRootPath, 0)
  sComma   = vuGetDriveSpace(sRootPath, 1)
  sGB      = vuGetDriveSpace(sRootPath, 2)
  sHybrid  = vuGetDriveSpace(sRootPath, 3)

  sMsg = 'Drive space (Free / Total) for ' & CLIP(sRootPath) & ':' & '<13,10>' & |
         'Raw:     ' & CLIP(sRaw) & '<13,10>' & |
         'Comma:   ' & CLIP(sComma) & '<13,10>' & |
         'GB:      ' & CLIP(sGB) & '<13,10>' & |
         'Hybrid:  ' & CLIP(sHybrid)

  MESSAGE(sMsg, 'vuGetDriveSpace Formats')

```
Notes

The raw format provides values in bytes separated by /.

GB format rounds values to gigabytes with suffix.

Hybrid format shows both GB and raw bytes.

Works with local, removable, and network drives.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
