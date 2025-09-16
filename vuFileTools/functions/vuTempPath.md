[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuTempPath()

```Prototype
vuTempPath(), CSTRING
```


## Description
Returns the path to the Windows temporary directory.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the fully qualified path to the Windows temporary directory.

### Example

```Clarion
MESSAGE('The Windows temp directory is ' & vuTempPath())
```

### Notes
- The returned path typically points to a location such as `C:\Users\<User>\AppData\Local\Temp`.  
- Useful for creating and storing temporary files.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
