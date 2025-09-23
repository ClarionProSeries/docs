---
title: "vuUserName"
summary: "Retrieves the name of the current user logged into the PC."
description: "Retrieves the name of the current user logged into the PC. ### Parameters ### Returns
A CSTRING containing the name of the current PC user. ### Example ### Notes
- Returns the Windows login name of the user currently authenticated on the system.  
- Useful for logging, personalization, or tracking user activity. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuusername", "vuFileTools", "into", "user", "retrieves", "general", "logged", "Clarion", "name", "Windows"]
function_name: "vuUserName"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuUserName()

```Prototype
vuUserName(), CSTRING
```


## Description
Retrieves the name of the current user logged into the PC.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the name of the current PC user.

### Example

```Clarion
MESSAGE(vuUserName() & ' is currently using this machine')
```

### Notes
- Returns the Windows login name of the user currently authenticated on the system.  
- Useful for logging, personalization, or tracking user activity.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
