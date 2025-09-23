---
title: "vuSelfDelete"
summary: "Schedules the applications executable file to be automatically deleted after the program terminates."
description: "Schedules the applications executable file to be automatically deleted after the program terminates. Your application must exit immediately after calling this function. ### Parameters ### Returns
A LONG value:  
- Always returns 1 (True).   ### Example ### Notes
- This function enters a tight loop waiting for the process to terminate before deleting the executable file.  
- Use with caution, as improper usage can leave the file locked and undeleted. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["deleted", "vuFileTools", "schedules", "applications", "terminates", "after", "automatically", "executable", "general", "vuselfdelete", "Clarion", "program"]
function_name: "vuSelfDelete"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuSelfDelete()

```Prototype
vuSelfDelete(), Long
```


## Description
Schedules the applications executable file to be automatically deleted after the program terminates. Your application must exit immediately after calling this function.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value:  
- Always returns 1 (True).  

### Example

```Clarion
! Schedule program for self-deletion
vuSelfDelete()

! Application must terminate immediately after this call
RETURN
```

### Notes
- This function enters a tight loop waiting for the process to terminate before deleting the executable file.  
- Use with caution, as improper usage can leave the file locked and undeleted.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
