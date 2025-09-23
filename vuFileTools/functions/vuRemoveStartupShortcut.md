---
title: "vuRemoveStartupShortcut"
summary: "Removes a shortcut (."
description: "Removes a shortcut (.lnk file) from the Windows Startup folder so that the specified program no longer runs automatically at startup. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A LONG value indicating the result: - 1: Success (shortcut deleted)  
- 0: Not found or not deleted  
- -5: Access denied (not elevated)  
- -6: Invalid arguments  
- -7: Startup folder not found   ### Example Notes The shortcut name should include .lnk if that was part of the original name; otherwise it will be added automatically. Common Startup (Scope = 1) usually requires elevation (Administrator rights). Use together with vuAddStartupShortcut for full management of startup entries. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuremovestartupshortcut", "vuFileTools", "shortcut", "removes", "general", "Clarion", "Windows"]
function_name: "vuRemoveStartupShortcut"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRemoveStartupShortcut(LinkName, Scope)

```Prototype
vuRemoveStartupShortcut(*CSTRING,LONG), LONG
```


## Description
Removes a shortcut (.lnk file) from the Windows Startup folder so that the specified program no longer runs automatically at startup.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| LinkName  | CSTRING(260) | Name of the shortcut file to remove (e.g., `MyApp.lnk`).                     |
| Scope     | LONG         | `0` = Current User Startup, `1` = Common (All Users) Startup.               |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: Success (shortcut deleted)  
- 0: Not found or not deleted  
- -5: Access denied (not elevated)  
- -6: Invalid arguments  
- -7: Startup folder not found  

### Example

```Clarion
LinkName CSTRING(260)
Scope    LONG
Rc       LONG

LinkName = 'CL_Test_Notepad'
Scope    = 0  ! User Startup

Rc = vuRemoveStartupShortcut(LinkName, Scope)

IF Rc = 1
  MESSAGE('Startup shortcut removed successfully (User Startup).')
ELSIF Rc = 0
  MESSAGE('Shortcut not found or not deleted.')
ELSE
  MESSAGE('Failed to remove startup shortcut. rc=' & FORMAT(Rc))
END

```
Notes

The shortcut name should include .lnk if that was part of the original name; otherwise it will be added automatically.

Common Startup (Scope = 1) usually requires elevation (Administrator rights).

Use together with vuAddStartupShortcut for full management of startup entries.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
