[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMemoryPercentUsed()

```Prototype
vuMemoryPercentUsed(), LONG
```


## Description
Returns the percentage (0100) of physical memory currently in use on the system.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value between 0 and 100 representing the percent of physical memory being used.

### Example

```Clarion
MESSAGE('You are currently using ' & vuMemoryPercentUsed() & ' percent of physical memory')
```

### Notes
- Value represents system-wide physical memory usage.  
- Can be used to check memory pressure before running memory-intensive operations.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
