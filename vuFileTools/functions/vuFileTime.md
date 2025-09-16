[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFileTime(Filename, Type)

```Prototype
vuFileTime(*CSTRING,LONG), Long
```


## Description
Returns the creation, last written, or last accessed time of a specified file.

### Parameters

| Parameter | Data Type    | Description                                                     |
|-----------|--------------|-----------------------------------------------------------------|
| Filename  | CSTRING(256) | Fully qualified path and filename of an existing file           |
| Type      | LONG         | 1 = Creation Time <br> 2 = Last Written Time <br> 3 = Last Accessed Time |

### Returns
A LONG containing the requested time in standard Clarion time format.

### Example

```Clarion
Filename = 'C:\Temp\valutilities.bak'
MESSAGE('Last written time = ' & vuFileTime(Filename, 2))
```

### Notes
- Returned time is in standard Clarion time format.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
