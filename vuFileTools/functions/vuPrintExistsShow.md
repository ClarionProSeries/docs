[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintExistsShow(pFile, ShowCmd)

```Prototype
vuPrintExistsShow(*CSTRING pFile, LONG ShowCmd), LONG
```


## Description
Sends a file to the default printer and displays the print job window using the specified ShowCmd setting.  
This allows you to both start printing and control how the print window appears.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Path to the file to be printed.                                             |
| ShowCmd   | LONG         | Window show mode (see Windows `SW_*` constants, e.g., 1 = normal).          |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the print job was successfully started.  
- 0 if the print job failed.  
- Negative values may indicate errors such as invalid arguments or access denied.

### Example

```Clarion
FilePath   CSTRING(260)
ShowCmd    LONG
Ret        LONG

  CODE
  FilePath = 'C:\Temp\Test.txt'
  ShowCmd  = 1    ! SW_SHOWNORMAL

  Ret = vuPrintExistsShow(FilePath, ShowCmd)

  MESSAGE('vuPrintExistsShow returned: ' & FORMAT(Ret), 'vuPrintExistsShow')

```
Notes

The file must exist and be printable by the default printer.

ShowCmd controls how the print window is displayed. Common values:

    0 = SW_HIDE (hidden)

    1 = SW_SHOWNORMAL (normal window)

    3 = SW_SHOWMAXIMIZED (maximized)

    7 = SW_SHOWMINNOACTIVE (minimized, no activation)

Use this when you want to visually confirm or interact with the print process.


Chat

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
