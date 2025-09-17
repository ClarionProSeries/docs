[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMove(Source, Destination, Subdirs)

```Prototype
vuMove(*CSTRING,*CSTRING,LONG), Signed
```


## Description
Moves one or more files from a source location to a destination. Supports wildcards and can optionally include subdirectories. Works across local and network drives.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| Source      | CSTRING(256) | Fully qualified source path and filename. Wildcards are allowed.            |
| Destination | CSTRING(256) | Fully qualified destination path. Created automatically if it does not exist. |
| Subdirs     | LONG         | Flag indicating if subdirectories should also be moved (1 = Yes, 0 = No).   |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
Source      = 'C:\SourceFolder\*.*'
Destination = 'D:\BackupFolder\'
Subdirs     = 1

IF vuMove(Source, Destination, Subdirs)
  MESSAGE('Files moved successfully.')
ELSE
  MESSAGE('File move failed.')
END
```

### Notes
- Supports moving files across different drives, including network locations.  
- Wildcards (such as `*.*`) are supported.  
- Internally calls `vuCopy()` followed by `vuDelete()`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
