---
title: "vuDiagnosticsSetFile"
summary: "Set the diagnostics log file used by vuMailKit."
description: "Stores the diagnostics log file path and immediately reconfigures the diagnostics writer to use that path. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit","diagnostics","logging","file","vudiagnosticssetfile"]
function_name: "vuDiagnosticsSetFile"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuDiagnosticsSetFile(xFileName)

```Prototype
vuDiagnosticsSetFile(*CString xFileName),SIGNED,PROC,Pascal,Raw,Name('vuDiagnosticsSetFile')
```

## Description

Sets the diagnostics file path used by vuMailKit.

If diagnostics are already enabled, the logging subsystem is immediately reconfigured to use the new file path.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| xFileName | *CSTRING | Full path to the diagnostics log file you want vuMailKit to use. |

## Returns

- `1` = file path stored successfully
- `0` = operation failed

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- The chosen file path is persisted under the vuMail registry compatibility area.
- The diagnostics enabled/disabled state is preserved when the file path is changed.
- The SMTP protocol log is written beside the diagnostics log file.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
