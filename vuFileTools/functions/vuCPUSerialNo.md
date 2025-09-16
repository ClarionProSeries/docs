[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCPUSerialNo()

```Prototype
vuCPUSerialNo(), CSTRING
```


## Description
Returns the CPU serial number. Valid only for Intel Pentium III processors. On Pentium IV and newer, a consistent number may be returned, but it is not the actual CPU serial number and is not guaranteed to be unique.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A null-terminated CSTRING containing the CPU serial number.  

### Example

```Clarion
MESSAGE('CPU Serial Number = ' & vuCPUSerialNo())
```

### Notes
- Only Pentium III processors return a valid serial number.  
- On Pentium IV processors, the returned value is not the CPU serial number and may not be unique.  
- This function may be disabled in BIOS or by system configuration.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
