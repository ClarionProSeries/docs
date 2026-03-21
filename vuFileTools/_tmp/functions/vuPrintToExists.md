
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintToExists(pFile, pPrinter)

```Prototype
vuPrintToExists(*CSTRING pFile, *CSTRING pPrinter), LONG
```

## Description
Sends a file to the specified printer if the file exists.

## Related Print Functions

| Function | Default Printer | Named Printer | Wait/Poll for File | Show Window | Notes |
|----------|-----------------|---------------|--------------------|-------------|-------|
| [vuPrintExists](vuPrintExists.md) | Yes | No | No | No | Prints to the default printer if the file exists. |
| [vuPrintExistsEx](vuPrintExistsEx.md) | Yes | No | Yes | No | Waits for a file to appear, then prints to the default printer. |
| [vuPrintExistsShow](vuPrintExistsShow.md) | Yes | No | No | Yes | Prints to the default printer and controls print-window display. |
| [vuPrintToExists](vuPrintToExists.md) | No | Yes | No | No | Prints to a specified printer if the file exists. |
| [vuPrintToExistsEx](vuPrintToExistsEx.md) | No | Yes | Yes | No | Waits for a file to appear, then prints to a specified printer. |

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| pFile | CSTRING(260) | Path to the file to print. |
| pPrinter | CSTRING(260) | Name of the printer to use. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the print request was started successfully
- 0 if the file does not exist or the print request failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath    CSTRING(260)
PrinterName CSTRING(260)
Ret         LONG

FilePath    = 'C:\Temp\Test.txt'
PrinterName = 'Microsoft Print to PDF'
Ret = vuPrintToExists(FilePath, PrinterName)
```

### Notes
- Use this when you need to target a specific printer rather than the default printer.
- If you need to wait for the file to appear first, use `vuPrintToExistsEx`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)