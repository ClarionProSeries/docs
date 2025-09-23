---
title: "vuGetVolumeLabel"
summary: "Returns the volume label of the specified root directory."
description: "Returns the volume label of the specified root directory. Supports both local drives and UNC paths. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A CSTRING containing the volume label of the specified root directory. ### Example Notes Works with both local drives and network shares. Returns <unreadable> if the volume label cannot be accessed. Ensure tDir points to a valid root directory. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["label", "vuFileTools", "specified", "directory", "volume", "root", "general", "returns", "Clarion", "Windows", "vugetvolumelabel"]
function_name: "vuGetVolumeLabel"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetVolumeLabel(tDir)

```Prototype
vuGetVolumeLabel(*CSTRING), CSTRING
```


## Description
Returns the volume label of the specified root directory. Supports both local drives and UNC paths.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| tDir      | CSTRING(128) | Path to the root directory (for example, `C:\` or `\\MyServer\C\`).         |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A CSTRING containing the volume label of the specified root directory.

### Example

```Clarion
sRootPath CSTRING(4)
sLabel    CSTRING(64)
sMsg      STRING(128)

  CODE
  sRootPath = 'C:\'
  sLabel    = vuGetVolumeLabel(sRootPath)

  IF (sLabel = '<unreadable>')
    sMsg = 'Unable to retrieve volume label for: ' & CLIP(sRootPath)
  ELSE
    sMsg = 'Volume label for ' & CLIP(sRootPath) & ' is: ' & CLIP(sLabel)
  END

  MESSAGE(sMsg, 'vuGetVolumeLabel Test')

```
Notes

Works with both local drives and network shares.

Returns <unreadable> if the volume label cannot be accessed.

Ensure tDir points to a valid root directory.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
