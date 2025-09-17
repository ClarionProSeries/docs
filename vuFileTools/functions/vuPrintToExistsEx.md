[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintToExistsEx(pFile, WaitSeconds, PollMS, pPrinter)

```Prototype
vuPrintToExistsEx(*CSTRING pFile, LONG WaitSeconds, LONG PollMS, *CSTRING pPrinter), LONG
```


## Description
Sends a file to the specified printer and waits for confirmation that the print job was queued.  
This function allows you to specify how long to wait and how often to poll for the print job status.

### Parameters

| Parameter    | Data Type    | Description                                                                 |
|--------------|--------------|-----------------------------------------------------------------------------|
| pFile        | CSTRING(260) | Path to the file to be printed.                                             |
| WaitSeconds  | LONG         | Maximum time to wait (in seconds) for the print job to appear in the queue. |
| PollMS       | LONG         | Polling interval (in milliseconds) while waiting.                           |
| pPrinter     | CSTRING(260) | Name of the printer (for example, `Microsoft Print to PDF`).                 |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the print job was detected in the queue within the specified wait time.  
- 0 if the print job was not detected.  
- Negative values may indicate errors such as access denied, invalid arguments, or printer not found.

### Example

```Clarion
FilePath    CSTRING(260)
WaitSeconds LONG
PollMS      LONG
PrinterName CSTRING(260)
Ret         LONG

  CODE
  FilePath    = 'C:\Temp\Test.txt'
  WaitSeconds = 10
  PollMS      = 200
  PrinterName = 'Microsoft Print to PDF'

  Ret = vuPrintToExistsEx(FilePath, WaitSeconds, PollMS, PrinterName)

  MESSAGE('vuPrintToExistsEx returned: ' & FORMAT(Ret), 'vuPrintToExistsEx')

```
Notes

Use this when you need to confirm that a print job has been queued within a specific timeframe.

The polling mechanism provides more reliable confirmation than vuPrintToExists in busy environments.

Ensure the printer is accessible and properly configured.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
