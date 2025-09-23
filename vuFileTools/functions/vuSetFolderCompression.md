---
title: "vuSetFolderCompression"
summary: "Enables or disables NTFS compression on the specified folder."
description: "Enables or disables NTFS compression on the specified folder.  
This allows you to toggle compression without recreating the folder. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
- 1 if the operation succeeded.  
- 0 if the operation failed.  
- Negative values may indicate errors such as invalid arguments, access denied, or path not found. ### Example Notes Works only on NTFS volumes. Use vuIsFolderCompressed to confirm compression status. Requires appropriate permissions on the folder. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "Clarion", "specified", "ntfs", "compression", "general", "disables", "folder", "vusetfoldercompression", "Windows", "enables"]
function_name: "vuSetFolderCompression"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuSetFolderCompression(zPath, Enable)

```Prototype
vuSetFolderCompression(*CSTRING,LONG), SIGNED
```


## Description
Enables or disables NTFS compression on the specified folder.  
This allows you to toggle compression without recreating the folder.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| zPath     | CSTRING   | Full path of the folder to update (for example, `C:\Testing\ToggleCompression`). |
| Enable    | LONG      | 1 to enable compression, 0 to disable compression.                          |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the operation succeeded.  
- 0 if the operation failed.  
- Negative values may indicate errors such as invalid arguments, access denied, or path not found.

### Example

```Clarion
zPath  CSTRING(256)
Result LONG
Msg    CSTRING(256)

  CODE
  zPath = 'C:\Testing\ToggleCompression'

  Result = vuSetFolderCompression(zPath, 1)
  IF Result
    Msg = 'Compression ENABLED for folder:<13,10>' & zPath
  ELSE
    Msg = 'FAILED to enable compression for folder:<13,10>' & zPath
  END
  MESSAGE(Msg, 'Step 1: Enable Compression')

  Result = vuSetFolderCompression(zPath, 0)
  IF Result
    Msg = 'Compression DISABLED for folder:<13,10>' & zPath
  ELSE
    Msg = 'FAILED to disable compression for folder:<13,10>' & zPath
  END
  MESSAGE(Msg, 'Step 2: Disable Compression')

```
Notes

Works only on NTFS volumes.

Use vuIsFolderCompressed to confirm compression status.

Requires appropriate permissions on the folder.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
