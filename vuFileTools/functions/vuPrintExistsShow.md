---
title: "vuPrintExistsShow"
summary: "Sends a file to the default printer and displays the print job window using the specified ShowCmd setting."
description: "Sends a file to the default printer and displays the print job window using the specified ShowCmd setting."
keywords: ["vuprintexistsshow", "print", "showcmd", "default printer", "vuFileTools", "Clarion"]
function_name: "vuPrintExistsShow"
category: "General"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintExistsShow(pFile, ShowCmd)

```Prototype
vuPrintExistsShow(*CSTRING pFile, LONG ShowCmd), LONG
```

## Description
Sends a file to the default printer and displays the print job window using the specified ShowCmd setting.

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
| ShowCmd | LONG | Window show mode (see Windows `SW_*` constants). |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the print job was successfully started
- 0 if the print job failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(260)
ShowCmd  LONG
Ret      LONG

FilePath = 'C:\Temp\Test.txt'
ShowCmd  = 1
Ret = vuPrintExistsShow(FilePath, ShowCmd)
```

### Notes
- Uses the default printer.
- Use this when you want print-start behavior plus control over how the print window is displayed.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
