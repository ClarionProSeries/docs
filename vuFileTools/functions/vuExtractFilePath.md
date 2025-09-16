[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuExtractFilePath(FileSpec)

```Prototype
vuExtractFilePath(*CSTRING), CSTRING
```


## Description
Returns the drive and path portion of a fully qualified file specification.

### Parameters

| Parameter | Data Type    | Description                                      |
|-----------|--------------|--------------------------------------------------|
| FileSpec  | CSTRING(256) | Fully qualified path and filename to extract from |

### Returns
A null-terminated CSTRING containing the file path. Can be assigned to any Clarion string variable.

### Example

```Clarion
FileSpec = 'C:\Temp\Valutilities.bak'
MESSAGE('The file path is ' & vuExtractFilePath(FileSpec))

LOC:Path = vuExtractFilePath(FileSpec)
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
