---
title: "vuRun"
summary: "Runs a program using the Windows Shell with the specified window style and wait behavior."
description: "Runs a program using the Windows Shell with the specified window style and wait behavior. This function is useful for launching support programs (for example, utilities or file conversions) in a controlled manner, including hidden execution. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- Useful for running external utilities or batch processes from your Clarion application.  
- Setting `WStyle` to 0 runs the program completely hidden.  
- Use `Wait = 1` when you need to pause execution until the external program finishes. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "program", "style", "shell", "specified", "general", "behavior", "vurun", "wait", "with", "Clarion"]
function_name: "vuRun"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRun(Filename, WStyle, Wait)

```Prototype
vuRun(*CSTRING,LONG,LONG), Signed
```


## Description
Runs a program using the Windows Shell with the specified window style and wait behavior. This function is useful for launching support programs (for example, utilities or file conversions) in a controlled manner, including hidden execution.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| Filename  | CSTRING(256) | Fully qualified path and filename of the program to run. May include runtime parameters. |
| WStyle    | LONG         | Window style for execution:<br>0 = Hidden<br>1 = Normal with focus<br>2 = Minimized with focus<br>3 = Maximized with focus<br>4 = Normal without focus<br>6 = Minimized without focus |
| Wait      | LONG         | Execution wait flag:<br>0 = Return immediately, do not wait for completion<br>1 = Wait until the program completes |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
Filename = 'C:\Programs\Notepad.exe mydoc.txt'
WStyle   = 1   ! Normal with focus
Wait     = 1   ! Wait for program to complete

IF vuRun(Filename, WStyle, Wait)
  MESSAGE('Program executed successfully.')
ELSE
  MESSAGE('Failed to run program.')
END
```

### Notes
- Useful for running external utilities or batch processes from your Clarion application.  
- Setting `WStyle` to 0 runs the program completely hidden.  
- Use `Wait = 1` when you need to pause execution until the external program finishes.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
