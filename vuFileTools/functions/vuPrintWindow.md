[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintWindow()

```Prototype
vuPrintWindow(), Signed
```


## Description
Prints the current active window (not the entire desktop).

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
IF vuPrintWindow()
  MESSAGE('Current window sent to printer.')
ELSE
  MESSAGE('Print window failed.')
END
```

### Notes
- Requires Windows 98 SE or higher.  
- The user will be prompted to select a printer.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
