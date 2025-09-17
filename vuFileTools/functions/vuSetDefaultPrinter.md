[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuSetDefaultPrinter(PrinterName)

```Prototype
vuSetDefaultPrinter(*CSTRING), Signed
```


## Description
Sets the PC's default printer to the printer specified by name. If the name is left blank, the first printer in the system list will be set as default.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| PrinterName | CSTRING(256) | The name of the printer to set as the default. Leave blank to select the first printer listed. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
PrinterName = 'Epson Stylus Photo R300'

IF vuSetDefaultPrinter(PrinterName)
  MESSAGE('Default printer set successfully.')
ELSE
  MESSAGE('Failed to set default printer.')
END
```

### Notes
- Requires Windows 2000 or higher.  
- Use `vuGetDefaultPrinter()` to save the current default before switching.  
- Typical usage pattern:  
  1. Save the current default printer.  
  2. Set a new default printer (for example, a label printer).  
  3. Run an external program that outputs to the printer.  
  4. Reset the default printer back to the original.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
