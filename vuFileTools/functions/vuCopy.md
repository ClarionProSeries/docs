---
title: "vuCopy"
summary: "Copies files from one location to another."
description: "Copies files from one location to another. Supports wildcards and optional subdirectory copying. Can copy across drives, including network drives.   - In version 3.5, the mask in `Source` applied to all subdirectories.  
- In version 3.6, the original functionality was restored, with `Subdirs = 2` added to apply the mask to all subdirectories (UNCs not supported when using 2).   ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Examples ### Notes
- `Subdirs = 1` copies all files and subdirectories.  
- `Subdirs = 2` applies the mask to all subdirectories but disallows UNCs. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "Clarion", "copies", "location", "from", "another", "general", "vucopy", "Windows", "files"]
function_name: "vuCopy"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCopy(Source, Destination, Subdirs)

```Prototype
vuCopy(*CSTRING,*CSTRING,LONG), Signed
```


## Description
Copies files from one location to another. Supports wildcards and optional subdirectory copying. Can copy across drives, including network drives.  

- In version 3.5, the mask in `Source` applied to all subdirectories.  
- In version 3.6, the original functionality was restored, with `Subdirs = 2` added to apply the mask to all subdirectories (UNCs not supported when using 2).  

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| Source      | CSTRING(256) | Fully qualified path and filename (wildcards allowed)                       |
| Destination | CSTRING(256) | Fully qualified destination path. Created if it does not exist.             |
| Subdirs     | LONG         | 0 = Do not copy subdirectories <br> 1 = Copy all subdirectories and files <br> 2 = Apply mask to all subdirectories (slower, UNCs not supported) |

### Returns
1 (True) on success, 0 (False) on failure.

### Examples

```Clarion
! Copy all files and subdirectories
Source      = 'C:\Temp\*'
Destination = 'G:\Backup'
vuCopy(Source, Destination, 1)
```

```Clarion
! Copy only files without extensions
Source = 'C:\Temp\*.'
vuCopy(Source, 'C:\Backup', 0)

! Copy only .bak files, applying mask to subdirectories
Source = 'C:\Temp\*.bak'
vuCopy(Source, 'C:\Backup', 2)
```

### Notes
- `Subdirs = 1` copies all files and subdirectories.  
- `Subdirs = 2` applies the mask to all subdirectories but disallows UNCs.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
