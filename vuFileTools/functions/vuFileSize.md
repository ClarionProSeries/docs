[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFileSize(Filename)

```Prototype
vuFileSize(*CSTRING), CSTRING
```


## Description
Returns the size of a file without opening it, ensuring that file dates and times are not affected.

### Parameters

| Parameter | Data Type    | Description                                        |
|-----------|--------------|----------------------------------------------------|
| Filename  | CSTRING(128) | Fully qualified path and filename of the file       |

### Returns
A null-terminated CSTRING containing the size of the file in bytes.

### Example

```Clarion
LOC:Size     REAL
LOC:FileName = 'C:\Valutilities\Test.tps'

LOC:Size = vuFileSize(LOC:FileName)
MESSAGE('File size = ' & vuFileSize(LOC:FileName) & ' bytes')
```

### Notes
- The returned size does not affect file timestamps.  
- Requires Windows 98 or higher.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
