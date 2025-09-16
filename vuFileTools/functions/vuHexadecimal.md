[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuHexadecimal(LongValue)

```Prototype
vuHexadecimal(Long), CSTRING
```


## Description
Converts a LONG value into its hexadecimal representation.

### Parameters

| Parameter | Data Type | Description                          |
|-----------|-----------|--------------------------------------|
| LongValue | LONG      | The value to convert to hexadecimal  |

### Returns
A CSTRING containing the hexadecimal representation of `LongValue`.

### Example

```Clarion
LongValue = 1234
MESSAGE('Hex value = ' & vuHexadecimal(LongValue))   ! Returns 4D2
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
