[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFreeSpace(Drive)

```Prototype
vuFreeSpace(*CSTRING), CSTRING
```


## Description
Returns the available free space on the specified drive without the 2 GB limit imposed by older APIs.  

Since Clarion cannot natively handle large integers, the result is returned as a formatted string (e.g., `123,456,789`). Use the Clarion `DEFORMAT` command to convert the string to a numeric value if needed.

### Parameters

| Parameter | Data Type   | Description                  |
|-----------|-------------|------------------------------|
| Drive     | CSTRING(2)  | Drive letter (e.g., `'C'`)   |

### Returns
A null-terminated CSTRING containing the available bytes on the disk (formatted with commas).

### Example

```Clarion
LOC:Size  REAL
LOC:Drive = 'C'

LOC:Size = DEFORMAT(vuFreeSpace(LOC:Drive))
MESSAGE('C Drive has ' & vuFreeSpace(LOC:Drive) & ' bytes available')
```

### Notes
- Works with any size drive (no 2 GB limit).  
- Requires Windows 98 or higher.  
- The reported free space may be smaller than the actual available space if quotas are enforced by the system administrator.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
