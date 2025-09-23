---
title: "vuSetFolderDate"
summary: "Sets the date and time attributes of a specified folder."
description: "Sets the date and time attributes of a specified folder. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- Updates the folders date and time attributes.  
- Folder must already exist or the call will fail. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vusetfolderdate", "vuFileTools", "specified", "attributes", "general", "folder", "sets", "Clarion", "date", "Windows", "time"]
function_name: "vuSetFolderDate"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuSetFolderDate(FolderName, Year, Month, Day, Hour, Minute, Second)

```Prototype
vuSetFolderDate(*CSTRING,Long,Long,Long,Long,Long,Long), Signed
```


## Description
Sets the date and time attributes of a specified folder.

### Parameters

| Parameter  | Data Type    | Description                                                        |
|------------|--------------|--------------------------------------------------------------------|
| FolderName | CSTRING(256) | Fully qualified path and name of an existing folder.               |
| Year       | LONG         | Year to set.                                                       |
| Month      | LONG         | Month to set (112).                                               |
| Day        | LONG         | Day of the month to set (131).                                    |
| Hour       | LONG         | Hour to set (023).                                                |
| Minute     | LONG         | Minute to set (059).                                              |
| Second     | LONG         | Second to set (059).                                              |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
FolderName = 'C:\Valutilities'

! Sets the folder's date and time to July 18, 2004, 4:00 PM
vuSetFolderDate(FolderName, 2004, 7, 18, 16, 0, 0)
```

### Notes
- Updates the folders date and time attributes.  
- Folder must already exist or the call will fail.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
