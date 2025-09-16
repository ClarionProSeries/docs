[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFolderDate(FolderName)

```Prototype
vuFolderDate(*CSTRING), Long
```


## Description
Returns the creation date of a folder in standard Clarion date format.

### Parameters

| Parameter  | Data Type    | Description                         |
|------------|--------------|-------------------------------------|
| FolderName | CSTRING(256) | Fully qualified path of the folder  |

### Returns
A LONG containing the folder creation date in standard Clarion date format.

### Example

```Clarion
FolderName = 'C:\temp'
MESSAGE('Folder created on: ' & vuFolderDate(FolderName))
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
