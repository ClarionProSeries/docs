
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintExists(pFile)

```Prototype
vuPrintExists(*CSTRING pFile), LONG
```

## Description
Sends the specified file to the default printer if the file exists.

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

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the file exists and the print request was started successfully
- 0 if the file does not exist or the print request failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(260)
Ret      LONG

FilePath = 'C:\Temp\Test.txt'
Ret = vuPrintExists(FilePath)
```

### Notes
- Uses the default Windows printer.
- If you need to print to a specific printer, use `vuPrintToExists`.
- If you need to wait for the file to appear first, use `vuPrintExistsEx`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)