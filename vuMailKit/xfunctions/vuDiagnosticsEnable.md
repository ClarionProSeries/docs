---
title: "vuDiagnosticsEnable"
summary: "Enable vuMailKit diagnostics logging."
description: "Turns on the vuMailKit diagnostics writer and uses the configured diagnostics log file, or chooses a default file if none has been set yet. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit","diagnostics","logging","vudiagnosticsenable"]
function_name: "vuDiagnosticsEnable"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuDiagnosticsEnable()

```Prototype
vuDiagnosticsEnable(),SIGNED,PROC,Pascal,Raw,Name('vuDiagnosticsEnable')
```

## Description

Enables diagnostic logging using the configured diagnostics file.

If no diagnostics file has been configured yet, vuMailKit chooses a default path automatically. The current implementation falls back through these locations:

- the existing diagnostics file path if already configured
- the configured mail log path when available
- a default temporary file path under the Windows temp folder

## Returns

- `1` = diagnostics enabled
- `0` = operation failed

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- This controls the general vuMailKit diagnostics writer.
- The SMTP protocol log is written in the same folder as the diagnostics file.
- The enabled state and diagnostics file path are persisted under the vuMail registry compatibility area so they survive the current session.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
