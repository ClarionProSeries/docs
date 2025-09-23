---
title: "vuExtractFileNameEx"
summary: "Extracts just the file name from a full file path."
description: "Extracts just the file name from a full file path.  
This is useful for removing directory components and isolating the file name. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A CSTRING containing only the file name portion of the path. ### Example Notes Handles paths with spaces and special characters. Does not return the directory portion. Returns the last element after the final backslash (\). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "extracts", "path", "full", "just", "from", "general", "Clarion", "vuextractfilenameex", "name", "Windows", "file"]
function_name: "vuExtractFileNameEx"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuExtractFileNameEx(FullPath)

```Prototype
vuExtractFileNameEx(LONG), CSTRING
```


## Description
Extracts just the file name from a full file path.  
This is useful for removing directory components and isolating the file name.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| FullPath  | CSTRING(260) | The full path to the file (for example, `C:\My Stuff\test(file,1).txt`).    |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A CSTRING containing only the file name portion of the path.

### Example

```Clarion
FullPath   CSTRING(260)
ShortName  CSTRING(128)

  CODE
  FullPath  = 'C:\My Stuff\test(file,1).txt'
  ShortName = vuExtractFileNameEx(FullPath)

  MESSAGE('Full Path: ' & FullPath & |
          '<13,10>Extracted Name: ' & ShortName, 'vuExtractFileNameEx Test')

```
Notes

Handles paths with spaces and special characters.

Does not return the directory portion.

Returns the last element after the final backslash (\).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
