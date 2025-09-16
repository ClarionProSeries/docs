[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFolderTime(FolderName)

```Prototype
vuFolderTime(*CSTRING), Long
```


## Description
Returns the creation time of a folder in standard Clarion time format.

### Parameters

| Parameter  | Data Type    | Description                         |
|------------|--------------|-------------------------------------|
| FolderName | CSTRING(256) | Fully qualified path of the folder  |

### Returns
A LONG containing the folder creation time in standard Clarion time format.

### Example

```Clarion
FolderName = 'C:\temp'
MESSAGE('Folder created at: ' & vuFolderTime(FolderName))
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
