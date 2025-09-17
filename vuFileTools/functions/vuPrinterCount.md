[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrinterCount()

```Prototype
vuPrinterCount(), Long
```


## Description
Returns the number of printers installed on the PC.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value containing the number of printers defined on the system.

### Example

```Clarion
MESSAGE('This PC has ' & vuPrinterCount() & ' printers defined')
```

### Notes
- Includes both local and network printers installed on the PC.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
