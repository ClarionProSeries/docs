[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMACCount()

```Prototype
vuMACCount(), LONG
```


## Description
Returns the number of Media Access Control (MAC) adapters found on the PC.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
LONG containing the number of active adapters on the PC.

### Example

```Clarion
MESSAGE('There were ' & vuMACCount() & ' adapters found on this PC')
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
