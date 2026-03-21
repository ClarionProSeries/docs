
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintToExistsEx(pFile, WaitSeconds, PollMS, pPrinter)

```Prototype
vuPrintToExistsEx(*CSTRING pFile, LONG WaitSeconds, LONG PollMS, *CSTRING pPrinter), LONG
```

## Description
Sends a file to the specified printer after optionally waiting for the file to appear.

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
| WaitSeconds | LONG | Maximum time to wait, in seconds, for the file to appear. |
| PollMS | LONG | Polling interval in milliseconds while waiting. |
| pPrinter | CSTRING(260) | Name of the printer to use. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the file appeared and the print request was started successfully
- 0 if the file never appeared or the print request failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath    CSTRING(260)
WaitSeconds LONG
PollMS      LONG
PrinterName CSTRING(260)
Ret         LONG

FilePath    = 'C:\Temp\Outgoing\Invoice.pdf'
WaitSeconds = 10
PollMS      = 200
PrinterName = 'Microsoft Print to PDF'
Ret = vuPrintToExistsEx(FilePath, WaitSeconds, PollMS, PrinterName)
```

### Notes
- Use this when another process is expected to create the file shortly and you need to print to a specific printer.
- If the default printer is acceptable, `vuPrintExistsEx` is the simpler choice.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)