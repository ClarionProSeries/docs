[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuPrintScreen()

```Prototype
vuPrintScreen(), Signed
```


## Description
Captures the Windows Desktop, prompts the user to select a printer, and prints a copy of the captured desktop image.

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
IF vuPrintScreen()
  MESSAGE('Desktop capture sent to printer.')
ELSE
  MESSAGE('Print screen failed.')
END
```

### Notes
- Requires Windows 98 SE or higher.  
- The user will be prompted to select a printer before printing.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
