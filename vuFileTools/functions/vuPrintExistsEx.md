---
title: "vuPrintExistsEx"
summary: "Sends the specified file to the default printer if it exists."
description: "Sends the specified file to the default printer if it exists. Optionally waits for the file to appear, polling at the given interval, before printing. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A LONG value indicating the result: - 1: File exists (or appeared within the wait period) and was sent to the default printer  
- 0: File does not exist, did not appear within the wait period, or could not be printed  
- Negative value: Error occurred   ### Example Notes Uses the systems default printer. Useful when a file is being generated asynchronously and will be ready to print shortly. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuprintexistsex", "vuFileTools", "specified", "exists", "general", "default", "Clarion", "sends", "Windows", "printer", "file"]
function_name: "vuPrintExistsEx"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintExistsEx(pFile, WaitSeconds, PollMS)

```Prototype
vuPrintExistsEx(*CSTRING pFile, LONG WaitSeconds, LONG PollMS), LONG
```


## Description
Sends the specified file to the default printer if it exists. Optionally waits for the file to appear, polling at the given interval, before printing.

### Parameters

| Parameter    | Data Type    | Description                                                                 |
|--------------|--------------|-----------------------------------------------------------------------------|
| pFile        | CSTRING(260) | Full path to the file to print if it exists.                                |
| WaitSeconds  | LONG         | Maximum number of seconds to wait for the file to appear.                   |
| PollMS       | LONG         | Interval, in milliseconds, to poll for the file while waiting.              |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: File exists (or appeared within the wait period) and was sent to the default printer  
- 0: File does not exist, did not appear within the wait period, or could not be printed  
- Negative value: Error occurred  

### Example

```Clarion
FilePath    CSTRING(260)
WaitSeconds LONG
PollMS      LONG
Ret         LONG

FilePath    = 'C:\Temp\Test.txt'
WaitSeconds = 10
PollMS      = 200

Ret = vuPrintExistsEx(FilePath, WaitSeconds, PollMS)

MESSAGE('vuPrintExistsEx returned: ' & FORMAT(Ret), 'vuPrintExistsEx Test')

```
Notes

Uses the systems default printer.

Useful when a file is being generated asynchronously and will be ready to print shortly.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
