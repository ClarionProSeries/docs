---
title: "vuFolderWatchStart"
summary: "Launches a Windows thread to monitor changes to the specified folder or its contents."
description: "Launches a Windows thread to monitor changes to the specified folder or its contents. Changes include file additions, modifications, or deletions within the folder or its subfolders. ### Parameters ### Returns
On success, returns the count of the number of folders currently being watched. ### Example ### Notes
- Each call launches a separate Windows thread for monitoring.  
- The thread remains in a wait state until a change occurs in the folder or its contents.  
- Use `vuFolderWatchCheck` to query whether a change has occurred.  
- There is no limit to the number of folders that can be monitored simultaneously. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["monitor", "contents", "windows", "vuFileTools", "changes", "specified", "vufolderwatchstart", "general", "thread", "folder", "Clarion", "Windows"]
function_name: "vuFolderWatchStart"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFolderWatchStart(fName)

```Prototype
vuFolderWatchStart(*CSTRING), Signed
```


## Description
Launches a Windows thread to monitor changes to the specified folder or its contents. Changes include file additions, modifications, or deletions within the folder or its subfolders.

### Parameters

| Parameter | Data Type    | Description                               |
|-----------|--------------|-------------------------------------------|
| fName     | CSTRING(256) | Fully qualified path of the folder to watch |

### Returns
On success, returns the count of the number of folders currently being watched.

### Example

```Clarion
fName = 'C:\Valutilities\Test'
x# = vuFolderWatchStart(fName)

IF x# > 0
  MESSAGE('Folder is being watched. Total watched folders = ' & x#)
END
```

### Notes
- Each call launches a separate Windows thread for monitoring.  
- The thread remains in a wait state until a change occurs in the folder or its contents.  
- Use `vuFolderWatchCheck` to query whether a change has occurred.  
- There is no limit to the number of folders that can be monitored simultaneously.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
