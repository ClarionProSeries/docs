[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMemoryFree()

```Prototype
vuMemoryFree(), REAL
```


## Description
Returns the amount of unused physical memory currently available on the system.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A REAL value containing the number of bytes of unused physical memory.

### Example

```Clarion
MESSAGE('This PC has ' & vuMemoryFree() & ' bytes of free memory')
```

### Notes
- Value is returned in bytes.  
- Use for monitoring available physical memory in applications that may be memory-intensive.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
