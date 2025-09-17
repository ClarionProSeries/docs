[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFolderWatchCheck(fName)

```Prototype
vuFolderWatchCheck(*CSTRING), Signed
```


## Description
Checks the status of a folder monitoring thread started with `vuFolderWatchStart`. Used to detect when changes occur in a watched folder.

### Parameters

| Parameter | Data Type    | Description                                                   |
|-----------|--------------|---------------------------------------------------------------|
| fName     | CSTRING(256) | Fully qualified path of the folder being monitored            |

### Returns
One of the following values:  
- 0 = Error, or the monitoring thread has not been launched/re-launched  
- -1 = Monitoring thread is running (no changes detected)  
- 1 = Monitoring thread has terminated (a change occurred)  

### Example

```Clarion
FolderToWatch = 'C:\Windows\Temp'

! Start watching the folder
IF vuFolderWatchStart(FolderToWatch) = 1
  MESSAGE('Folder is being monitored')
END

! Check for changes in the folder
CASE vuFolderWatchCheck(FolderToWatch)
OF 0
  MESSAGE('This folder is not watched')
OF -1
  MESSAGE('There have been no changes')
OF 1
  MESSAGE('A change has occurred')
  x# = vuFolderWatchStart(FolderToWatch)  ! Re-arm monitoring
END
```

### Notes
- Changes include file modifications, additions, removals, or subfolder changes within the watched folder hierarchy.  
- Once a change is detected, the monitoring thread terminates and the function will return 1 on the next check.  
- After processing changes, re-arm the watch with `vuFolderWatchStart`.  
- Lightweight enough to be placed in a `TIMER` embed without impacting performance.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
