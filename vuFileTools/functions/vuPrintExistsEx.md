---
title: "vuPrintExistsEx"
summary: "Sends the specified file to the default printer if it exists. Optionally waits for the file to appear before printing."
description: "Sends the specified file to the default printer if it exists. Optionally waits for the file to appear before printing."
keywords: ["vuprintexistsex", "print", "wait", "poll", "default printer", "vuFileTools", "Clarion"]
function_name: "vuPrintExistsEx"
category: "General"
version_added: "5.0"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintExistsEx(pFile, WaitSec, PollMS)

```Prototype
vuPrintExistsEx(*CSTRING pFile, LONG WaitSec, LONG PollMS), LONG
```

## Description
Sends the specified file to the default printer if it exists. Optionally waits for the file to appear before printing.

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
| WaitSec | LONG | Maximum number of seconds to wait for the file to appear. |
| PollMS | LONG | Polling interval in milliseconds while waiting. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the file appeared and the print request was started successfully
- 0 if the file never appeared or the print request failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath CSTRING(260)
Ret      LONG

FilePath = 'C:\Temp\Outgoing\Invoice.pdf'
Ret = vuPrintExistsEx(FilePath, 10, 200)
```

### Notes
- Use this when another process is expected to create the print file shortly.
- If you need a specific printer, use `vuPrintToExistsEx` instead.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
