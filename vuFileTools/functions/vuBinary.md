[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuBinary(LongValue)

```Prototype
vuBinary(Long), CSTRING
```


## Description
Returns the binary representation of a LONG value.

### Parameters

| Parameter | Data Type | Description                   |
|-----------|-----------|-------------------------------|
| LongValue | LONG      | The value to convert to binary |

### Returns
The binary representation of `LongValue`.

### Example

```Clarion
LongValue = 1234
MESSAGE('Binary = ' & vuBinary(LongValue))
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
