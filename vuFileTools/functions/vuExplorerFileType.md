---
title: "vuExplorerFileType"
summary: "Returns the file type description as shown in Windows Explorer for the specified file."
description: "Returns the file type description as shown in Windows Explorer for the specified file.  
This is the same description you see in the "Type" column of Explorer. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A CSTRING containing the Explorer file type description (for example, "Application" for `.exe` files). ### Example Notes Works for any file recognized by Windows Explorer. Returns the same description shown in Explorer, not just the extension. If the file is not associated with a program, a generic description may be returned. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["description", "vuexplorerfiletype", "vuFileTools", "windows", "specified", "type", "general", "returns", "shown", "Clarion", "explorer", "Windows"]
function_name: "vuExplorerFileType"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuExplorerFileType(pFile)

```Prototype
vuExplorerFileType(LONG), CSTRING
```


## Description
Returns the file type description as shown in Windows Explorer for the specified file.  
This is the same description you see in the "Type" column of Explorer.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Full path to the file (for example, `C:\Windows\Notepad.exe`).              |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A CSTRING containing the Explorer file type description (for example, "Application" for `.exe` files).

### Example

```Clarion
FilePath      CSTRING(260)
ExplorerType  CSTRING(128)

  CODE
  FilePath     = 'C:\Windows\Notepad.exe'
  ExplorerType = vuExplorerFileType(FilePath)

  MESSAGE('File: ' & FilePath & |
          '<13,10>Type: ' & ExplorerType, 'Explorer File Type')

```
Notes

Works for any file recognized by Windows Explorer.

Returns the same description shown in Explorer, not just the extension.

If the file is not associated with a program, a generic description may be returned.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
