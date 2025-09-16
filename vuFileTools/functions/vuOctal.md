[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuOctal(LongValue)

```Prototype
vuOctal(Long), CSTRING
```


## Description
Converts a LONG value into its octal representation.

### Parameters

| Parameter | Data Type | Description                        |
|-----------|-----------|------------------------------------|
| LongValue | LONG      | The number to convert to octal.    |

### Returns
A CSTRING containing the octal representation of `LongValue`.

### Example

```Clarion
LongValue = 1234
MESSAGE('Octal representation: ' & vuOctal(LongValue))
! Result: 2322
```

### Notes
- The return value is a string representation of the octal number.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
