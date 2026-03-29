---
title: "vuDiagnosticsGetFile"
summary: "Get the current diagnostics log file path used by vuMailKit."
description: "Copies the currently configured diagnostics log file path into a caller-supplied buffer. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit","diagnostics","logging","file","vudiagnosticsgetfile"]
function_name: "vuDiagnosticsGetFile"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuDiagnosticsGetFile(xFileName)

```Prototype
vuDiagnosticsGetFile(*CString xFileName),SIGNED,PROC,Pascal,Raw,Name('vuDiagnosticsGetFile')
```

## Description

Copies the currently configured diagnostics log file path into a caller-supplied buffer.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| xFileName | *CSTRING | Caller-supplied output buffer that receives the current diagnostics file path. |

## Returns

- `1` = file path copied successfully
- `0` = operation failed

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- The current implementation writes into a fixed-size buffer on the DLL side, so pass a generously sized `CSTRING`.
- A 260-character or 512-character buffer is a practical choice in Clarion.
- If diagnostics have never been configured, the returned string may be blank.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
