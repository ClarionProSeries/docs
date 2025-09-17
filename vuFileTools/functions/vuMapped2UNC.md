[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMapped2UNC(FilePath)

```Prototype
vuMapped2UNC(*CSTRING), CSTRING
```


## Description
Converts a fully qualified path and filename that uses a mapped drive letter into the equivalent UNC (Universal Naming Convention) path.

### Parameters

| Parameter | Data Type    | Description                               |
|-----------|--------------|-------------------------------------------|
| FilePath  | CSTRING(256) | The path and filename using a mapped drive |

### Returns
A CSTRING containing the complete path and filename with the mapped drive replaced by its UNC equivalent.  
If the drive is not mapped, the original path is returned unchanged.

### Example

```Clarion
FilePath = 'G:\myFolder\myProgram.exe'
MESSAGE(vuMapped2UNC(FilePath))
! Example result: '\\myServer\mySubfolder\myFolder\myProgram.exe'
```

### Notes
- Safe to use when it is unknown if the drive is mapped.  
- If the drive is not a mapped network drive, the original `FilePath` is returned.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
