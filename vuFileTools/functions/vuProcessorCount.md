[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuProcessorCount()

```Prototype
vuProcessorCount(), LONG
```


## Description
Returns the number of logical processors available on the system.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value containing the number of logical processors.  
On systems with Hyper-Threading, each logical processor is counted (e.g., a single physical CPU with Hyper-Threading enabled may return 2).

### Example

```Clarion
MESSAGE('This PC has ' & vuProcessorCount() & ' processors')
```

### Notes
- Returns logical processor count, not physical CPU sockets.  
- Useful for tuning applications that perform parallel or multi-threaded processing.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
