[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuISOS64()

```Prototype
vuIsOS64(), Long
```


## Description
Determines whether the operating system is 64-bit.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
1 (True) if the operating system is 64-bit, 0 (False) otherwise.

### Example

```Clarion
IF vuISOS64() = 1
  MESSAGE('The operating system is 64-bit')
ELSE
  MESSAGE('The operating system is 32-bit')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
