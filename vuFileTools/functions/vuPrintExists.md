---
title: "vuPrintExists"
summary: "Sends the specified file to the default printer if the file exists."
description: "Sends the specified file to the default printer if the file exists. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A LONG value indicating the result: - 1: File exists and was sent to the default printer  
- 0: File does not exist or could not be printed   ### Example Notes Uses the systems default printer. If the file does not exist, the function returns 0 and no action is taken. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "specified", "exists", "vuprintexists", "general", "default", "Clarion", "sends", "Windows", "printer", "file"]
function_name: "vuPrintExists"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintExists(pFile)

```Prototype
vuPrintExists(*CSTRING pFile), LONG
```


## Description
Sends the specified file to the default printer if the file exists.

### Parameters

| Parameter | Data Type    | Description                                              |
|-----------|--------------|----------------------------------------------------------|
| pFile     | CSTRING(260) | Full path to the file to print if it exists and is valid |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: File exists and was sent to the default printer  
- 0: File does not exist or could not be printed  

### Example

```Clarion
FilePath CSTRING(260)
Ret      LONG

FilePath = 'C:\Temp\Test.txt'
Ret      = vuPrintExists(FilePath)

MESSAGE('vuPrintExists returned: ' & FORMAT(Ret), 'vuPrintExists Test')

```
Notes

Uses the systems default printer.

If the file does not exist, the function returns 0 and no action is taken.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
