[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuSetAttributes(FileMask, ReadOnly, Hidden, System, Archive)

```Prototype
vuSetAttributes(*CSTRING,LONG,LONG,LONG,LONG), Signed
```


## Description
Sets or resets file attributes for the specified file or group of files. Wildcards are supported.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| FileMask  | CSTRING(256) | Fully qualified path and filename. Wildcards (`*.*`) are allowed.            |
| ReadOnly  | LONG         | 0 = Reset, 1 = Set the ReadOnly attribute.                                   |
| Hidden    | LONG         | 0 = Reset, 1 = Set the Hidden attribute.                                     |
| System    | LONG         | 0 = Reset, 1 = Set the System attribute.                                     |
| Archive   | LONG         | 0 = Reset, 1 = Set the Archive attribute.                                    |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
FileMask = 'C:\Valutilities\*.*'

! Reset ReadOnly, Hidden, System and Set Archive on all files in folder
vuSetAttributes(FileMask, 0, 0, 0, 1)
```

### Notes
- Applies to all files matching the file mask.  
- Supports both single files and groups of files using wildcards.  
- Useful for bulk resetting or updating file attributes programmatically.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
