[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFileType(FileName)

```Prototype
vuFileType(*CSTRING), Signed
```


## Description
Determines the executable type of a file based on its contents, not its extension.

### Parameters

| Parameter | Data Type    | Description                                       |
|-----------|--------------|---------------------------------------------------|
| FileName  | CSTRING(128) | Fully qualified path and filename of the file      |

### Returns
One of the following values:  
- 64 = 64-bit executable program  
- 32 = 32-bit executable program  
- 16 = 16-bit executable program  
- 8 = DOS executable  
- 1 = OS/2 or POSIX executable  
- 0 = Not an executable program  

### Example

```Clarion
FileName = 'C:\55\Bin\C55RW.EXE'

IF vuFileType(FileName) = 16
  MESSAGE('Program is a 16-bit Windows executable file')
END
```

### Notes
- Requires Windows 2000 or higher.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
