---
title: "vuUnpack"
summary: "Unpacks the contents of a packed file created with `vuPack()` and saves the individual files into the specified directory."
description: "Unpacks the contents of a packed file created with `vuPack()` and saves the individual files into the specified directory. ### Parameters ### Returns
A LONG value containing the number of files successfully unpacked. ### Example ### Notes
- If you used `vuCompress()` after packing, run `vuUncompress()` before calling `vuUnpack()`.  
- Destination directory must exist or the call may fail.  
- The unpacked files retain their original names inside the specified directory. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["contents", "vuFileTools", "created", "into", "specified", "directory", "individual", "general", "packed", "vupack", "file", "unpacks"]
function_name: "vuUnpack"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuUnpack(FileName, Directory)

```Prototype
vuUnPack(*CSTRING,*CSTRING), Signed
```


## Description
Unpacks the contents of a packed file created with `vuPack()` and saves the individual files into the specified directory.

### Parameters

| Parameter | Data Type    | Description                                               |
|-----------|--------------|-----------------------------------------------------------|
| FileName  | CSTRING(256) | Fully qualified path and name of the packed file.          |
| Directory | CSTRING(256) | Fully qualified path of the directory to unpack files into. |

### Returns
A LONG value containing the number of files successfully unpacked.

### Example

```Clarion
FileName = 'C:\transport\PackedTPS.val'
Directory = 'C:\Valutilities'

Count = vuUnpack(FileName, Directory)
MESSAGE(CLIP(Count) & ' files were unpacked to ' & Directory)
```

### Notes
- If you used `vuCompress()` after packing, run `vuUncompress()` before calling `vuUnpack()`.  
- Destination directory must exist or the call may fail.  
- The unpacked files retain their original names inside the specified directory.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
