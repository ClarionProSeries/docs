[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCreateDirectory(FilePath)

```Prototype
vuCreateDirectory(*CSTRING), Signed
```


## Description
Creates an entire directory path in one command. Any number of subdirectories can be included in `FilePath`.

### Parameters

| Parameter | Data Type    | Description                                   |
|-----------|--------------|-----------------------------------------------|
| FilePath  | CSTRING(256) | Fully qualified path including subdirectories |

### Returns
The number of directories actually created.

### Example

```Clarion
! Assume C:\Temp already exists
FilePath = 'C:\Temp\Temp1\Temp2\Temp3'
DirsMade = vuCreateDirectory(FilePath)
MESSAGE('Created ' & DirsMade & ' directories.')
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
