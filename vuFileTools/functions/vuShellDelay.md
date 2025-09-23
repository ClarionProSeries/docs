---
title: "vuShellDelay"
summary: "Launches a file using the Windows shell (honors file associations) after waiting for a specified delay."
description: "Launches a file using the Windows shell (honors file associations) after waiting for a specified delay. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A LONG value indicating the result: - 1: Launched successfully after the delay  
- 0: Failed to launch   ### Example Notes Uses the Windows shell, so file associations (e.g., .txt with Notepad) are honored. Useful when you need to defer launching to let dependencies initialize. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "delay", "shell", "using", "vushelldelay", "specified", "associations", "after", "waiting", "honors", "Clarion"]
function_name: "vuShellDelay"
category: "Shell Integration"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuShellDelay(pFile, DelayMS)

```Prototype
vuShellDelay(*CSTRING pFile, LONG DelayMS), LONG
```


## Description
Launches a file using the Windows shell (honors file associations) after waiting for a specified delay.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Full path to the file or executable to launch.                              |
| DelayMS   | LONG         | Delay before launching, in milliseconds (e.g., 2000 = 2 seconds).           |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: Launched successfully after the delay  
- 0: Failed to launch  

### Example

```Clarion
FilePath CSTRING(260)
DelayMS  LONG
Ret      LONG

FilePath = 'C:\Windows\notepad.exe'
DelayMS  = 2000

Ret = vuShellDelay(FilePath, DelayMS)

MESSAGE('vuShellDelay returned: ' & FORMAT(Ret), 'vuShellDelay Test')

```
Notes

Uses the Windows shell, so file associations (e.g., .txt with Notepad) are honored.

Useful when you need to defer launching to let dependencies initialize.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
