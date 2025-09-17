[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFileCount(Mask)

```Prototype
vuFileCount(*CSTRING), Long
```


## Description
Counts the number of files that match the specified mask. Wildcards are supported. Unlike Clarions built-in `EXISTS()` function, `vuFileCount` does not affect file creation, last written, or access dates.

### Parameters

| Parameter | Data Type    | Description                                                      |
|-----------|--------------|------------------------------------------------------------------|
| Mask      | CSTRING(256) | Fully qualified path and filename (wildcards allowed, e.g. `*.bak`) |

### Returns
LONG containing the total number of files that match the mask.  
- Returns 1 if the specific file exists.  
- Returns 0 if no matching files are found.  

### Example

```Clarion
Mask = 'C:\Temp\Valutilities.bak'
MESSAGE('Count = ' & vuFileCount(Mask))   ! Returns 1 if file exists, otherwise 0

Mask = 'C:\Temp\*.bak'
MESSAGE('Count = ' & vuFileCount(Mask))   ! Returns number of .bak files in C:\Temp
```

### Notes
- Wildcards are accepted.  
- Does not modify file timestamps (creation, last written, access).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
