[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuPrintToExists(pFile, pPrinter)

```Prototype
vuPrintToExists(*CSTRING pFile, *CSTRING pPrinter), LONG
```


## Description
Sends a file to the specified printer and checks whether the print job was successfully queued.  
Useful for confirming that print requests are reaching the intended printer.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Path to the file to be printed.                                             |
| pPrinter  | CSTRING(260) | Name of the printer (for example, `Microsoft Print to PDF`).                 |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the print job was successfully queued.  
- 0 if the print job failed.  
- Negative values may indicate errors such as access denied or invalid arguments.

### Example

```Clarion
FilePath    CSTRING(260)
PrinterName CSTRING(260)
Ret         LONG

  CODE
  FilePath    = 'C:\Temp\Test.txt'
  PrinterName = 'Microsoft Print to PDF'

  Ret = vuPrintToExists(FilePath, PrinterName)

  MESSAGE('vuPrintToExists returned: ' & FORMAT(Ret), 'vuPrintToExists')

```
Notes

Ensure the target printer is installed and accessible on the system.

The file specified must exist and be a valid format for the target printer.

For asynchronous or delayed checks, use vuPrintToExistsEx.

# vuPrintToExists(pFile, pPrinter)

## Description
Sends a file to the specified printer and checks whether the print job was successfully queued.  
Useful for confirming that print requests are reaching the intended printer.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Path to the file to be printed.                                             |
| pPrinter  | CSTRING(260) | Name of the printer (for example, `Microsoft Print to PDF`).                 |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the print job was successfully queued.  
- 0 if the print job failed.  
- Negative values may indicate errors such as access denied or invalid arguments.

### Example

```Clarion
FilePath    CSTRING(260)
PrinterName CSTRING(260)
Ret         LONG

  CODE
  FilePath    = 'C:\Temp\Test.txt'
  PrinterName = 'Microsoft Print to PDF'

  Ret = vuPrintToExists(FilePath, PrinterName)

  MESSAGE('vuPrintToExists returned: ' & FORMAT(Ret), 'vuPrintToExists')

Notes

    Ensure the target printer is installed and accessible on the system.

    The file specified must exist and be a valid format for the target printer.

    For asynchronous or delayed checks, use vuPrintToExistsEx.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
