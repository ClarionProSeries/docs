---
title: "vuSetFileDate"
summary: "Sets the date and time attributes of a specified file."
description: "Sets the date and time attributes of a specified file. Updates creation, last modified, and last accessed timestamps. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- All three file time attributes (created, modified, accessed) are updated to the specified date and time.  
- File must already exist or the call will fail.   Ch [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "specified", "attributes", "general", "sets", "Clarion", "date", "Windows", "vusetfiledate", "time", "file"]
function_name: "vuSetFileDate"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuSetFileDate(FileName, Year, Month, Day, Hour, Minute, Second)

```Prototype
vuSetFileDate(*CSTRING,LONG,LONG,LONG,LONG,LONG,LONG), Signed
```


## Description
Sets the date and time attributes of a specified file. Updates creation, last modified, and last accessed timestamps.

### Parameters

| Parameter | Data Type    | Description                                                        |
|-----------|--------------|--------------------------------------------------------------------|
| FileName  | CSTRING(256) | Fully qualified path and filename of an existing file.              |
| Year      | LONG         | Year to set.                                                       |
| Month     | LONG         | Month to set (112).                                               |
| Day       | LONG         | Day of the month to set (131).                                    |
| Hour      | LONG         | Hour to set (023).                                                |
| Minute    | LONG         | Minute to set (059).                                              |
| Second    | LONG         | Second to set (059).                                              |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
FileName = 'C:\Valutilities\Test.bak'

! Sets creation, last write, and last access time to July 18, 2004, 4:00 PM
vuSetFileDate(FileName, 2004, 7, 18, 16, 0, 0)
```

### Notes
- All three file time attributes (created, modified, accessed) are updated to the specified date and time.  
- File must already exist or the call will fail.  


Ch

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
