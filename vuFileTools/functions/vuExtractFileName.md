[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuExtractFileName(FileSpec)

```Prototype
vuExtractFileName(*CSTRING), CSTRING
```


## Description
Returns the file name portion of a fully qualified path and filename.

### Parameters

| Parameter | Data Type    | Description                                      |
|-----------|--------------|--------------------------------------------------|
| FileSpec  | CSTRING(256) | Fully qualified path and filename to extract from |

### Returns
A null-terminated CSTRING containing the file name. Can be assigned to any Clarion string variable.

### Example

```Clarion
FileSpec = 'C:\Temp\Valutilities.bak'
MESSAGE('The file name is ' & vuExtractFileName(FileSpec))

LOC:FileName = vuExtractFileName(FileSpec)
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
