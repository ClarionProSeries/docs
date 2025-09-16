[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuIPAddressCount()

```Prototype
vuIPAddressCount(), LONG
```


## Description
Returns the number of IP addresses configured on the PC. Multiple IP addresses may exist due to multiple NICs, modems, or virtual adapters.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
LONG containing the number of IP addresses configured on the PC.

### Example

```Clarion
MESSAGE('This PC has ' & vuIPAddressCount() & ' IP addresses assigned')
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
