[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMemoryTotal()

```Prototype
vuMemoryTotal(), REAL
```


## Description
Returns the total amount of physical memory installed on the system.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A REAL value containing the total number of bytes of physical memory installed.

### Example

```Clarion
MESSAGE('This PC has ' & vuMemoryTotal() & ' of memory installed')
```

### Notes
- Value is returned in bytes.  
- Use together with `vuMemoryFree()` and `vuMemoryPercentUsed()` for a complete picture of memory usage.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
