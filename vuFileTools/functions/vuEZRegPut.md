---
title: "vuEZRegPut"
summary: "Saves a value in the Windows registry without requiring knowledge of the registry key structure."
description: "Saves a value in the Windows registry without requiring knowledge of the registry key structure. The function automatically creates the required key and subkeys. Keys are stored under:  
- `HKEY_CURRENT_USER\Software\vuPrograms\<Your Program Name>\KeyName` if `ByUser = 1`  
- `HKEY_LOCAL_MACHINE\Software\vuPrograms\<Your Program Name>\KeyName` if `ByUser = 0`   This allows each application to store values independently without overwriting each other. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example ### Notes
- Works together with `vuEZRegGet` to retrieve stored values.  
- Each program name is embedded in the registry path, so keys with the same `KeyName` will not conflict between applications.  
- Not a general-purpose registry API  only designed for saving and retrieving simple values. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "value", "requiring", "vuezregput", "registry", "without", "knowledge", "general", "structure", "Clarion", "saves"]
function_name: "vuEZRegPut"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEZRegPut(ByUser, KeyName, KeyValue)

```Prototype
vuEZRegPut(LONG,*CSTRING,*CSTRING), Signed
```


## Description
Saves a value in the Windows registry without requiring knowledge of the registry key structure. The function automatically creates the required key and subkeys. Keys are stored under:  
- `HKEY_CURRENT_USER\Software\vuPrograms\<Your Program Name>\KeyName` if `ByUser = 1`  
- `HKEY_LOCAL_MACHINE\Software\vuPrograms\<Your Program Name>\KeyName` if `ByUser = 0`  

This allows each application to store values independently without overwriting each other.

### Parameters

| Parameter | Data Type     | Description                                                                 |
|-----------|---------------|-----------------------------------------------------------------------------|
| ByUser    | LONG          | 0 = Store value with the PC (all users) <br> 1 = Store value with the current logged-in user |
| KeyName   | CSTRING(128)  | Alphanumeric key name to store the value under                              |
| KeyValue  | CSTRING(128)  | The data value to store                                                     |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
! Example: Store a registration code for application "Trivette"
KeyName  = 'Registration Code'
KeyValue = '07 0F CB 4A 9D'

IF vuEZRegPut(0, KeyName, KeyValue) = 1
  MESSAGE('Registration saved successfully.')
END
```

### Notes
- Works together with `vuEZRegGet` to retrieve stored values.  
- Each program name is embedded in the registry path, so keys with the same `KeyName` will not conflict between applications.  
- Not a general-purpose registry API  only designed for saving and retrieving simple values.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
