[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCRC32(Filename)

```Prototype
vuCRC32(*CSTRING), LONG
```


## Description
Calculates a 32-bit CRC (Cyclic Redundancy Check) for the provided parameter. If the parameter is a valid file path, the CRC is calculated on the file contents. Otherwise, the CRC is calculated on the provided value.

### Parameters

| Parameter | Data Type     | Description                                                                 |
|-----------|---------------|-----------------------------------------------------------------------------|
| Filename  | CSTRING(512)  | Fully qualified file path (drive, path, filename) or a value to calculate CRC against |

### Returns
A ULONG containing the CRC32 value.

### Example

```Clarion
LOC:FileName = 'C:\Valutilities\Test.tps'
MESSAGE('CRC32 = ' & vuCRC32(LOC:FileName))
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
