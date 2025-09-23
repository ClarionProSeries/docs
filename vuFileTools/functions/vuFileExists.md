---
title: "vuFileExists"
summary: "Checks whether a specified file exists on disk."
description: "Checks whether a specified file exists on disk. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
- 1 if the file exists.  
- 0 if the file does not exist.  
- Negative values may indicate errors such as invalid arguments or access denied. ### Example Notes Use vuFileExistsEx if you need to wait or poll for the file to appear. Works with local and network paths. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "vufileexists", "specified", "exists", "disk", "whether", "system", "Clarion", "checks", "Windows", "file"]
function_name: "vuFileExists"
category: "File System"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFileExists(pFile)

```Prototype
vuFileExists(*CSTRING), LONG
```


## Description
Checks whether a specified file exists on disk.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Full path of the file to check (for example, `C:\Windows\Notepad.exe`).     |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the file exists.  
- 0 if the file does not exist.  
- Negative values may indicate errors such as invalid arguments or access denied.

### Example

```Clarion
TestPath CSTRING(260)
Result   LONG

  CODE
  TestPath = 'C:\Windows\Notepad.exe'
  Result = vuFileExists(TestPath)

  IF Result
    MESSAGE('The file EXISTS: ' & TestPath, 'vuFileExists')
  ELSE
    MESSAGE('The file does NOT exist: ' & TestPath, 'vuFileExists')
  END

  TestPath = 'C:\Windows\NotNotepad.exe'
  Result = vuFileExists(TestPath)

  IF Result
    MESSAGE('The file EXISTS: ' & TestPath, 'vuFileExists')
  ELSE
    MESSAGE('The file does NOT exist: ' & TestPath, 'vuFileExists')
  END

```
Notes

Use vuFileExistsEx if you need to wait or poll for the file to appear.

Works with local and network paths.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
