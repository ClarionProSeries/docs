---
title: "vuIsElevated"
summary: "Checks whether the current process is running with elevated privileges (administrative rights)."
description: "Checks whether the current process is running with elevated privileges (administrative rights).  
This is useful when your application requires Administrator access to perform certain tasks. ### Parameters ### Returns
- 1 if the current process is running elevated (with admin rights).  
- 0 if the process is not elevated.   ### Example Notes To check the type of elevation (standard user, elevated admin, or legacy admin), use vuElevationType(). On systems with User Account Control (UAC), this indicates whether your process has an elevated token. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "privileges", "vuFileTools", "running", "vuiselevated", "whether", "general", "rights", "administrative", "elevated", "Clarion", "with"]
function_name: "vuIsElevated"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuIsElevated()

```Prototype
vuIsElevated(), LONG
```


## Description
Checks whether the current process is running with elevated privileges (administrative rights).  
This is useful when your application requires Administrator access to perform certain tasks.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
- 1 if the current process is running elevated (with admin rights).  
- 0 if the process is not elevated.  

### Example

```Clarion
Elevated    LONG
ElevatedStr CSTRING(6)

  CODE
  Elevated = vuIsElevated()

  IF Elevated
    ElevatedStr = 'TRUE'
  ELSE
    ElevatedStr = 'FALSE'
  END

  MESSAGE('vuIsElevated returned: ' & ElevatedStr, 'Elevation Test')

```
Notes

To check the type of elevation (standard user, elevated admin, or legacy admin), use vuElevationType().

On systems with User Account Control (UAC), this indicates whether your process has an elevated token.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
