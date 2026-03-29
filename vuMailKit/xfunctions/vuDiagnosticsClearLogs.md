---
title: "vuDiagnosticsClearLogs"
summary: "Delete the current vuMailKit diagnostics log files."
description: "Removes the current diagnostics log, current protocol log, and the configured sent-log file when those files exist. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit","diagnostics","logging","clear logs","vudiagnosticsclearlogs"]
function_name: "vuDiagnosticsClearLogs"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuDiagnosticsClearLogs()

```Prototype
vuDiagnosticsClearLogs(),SIGNED,PROC,Pascal,Raw,Name('vuDiagnosticsClearLogs')
```

## Description

Deletes the current vuMailKit diagnostics-related log files when they exist.

The current implementation tries to remove:

- the main diagnostics log file
- the current SMTP protocol log file
- the configured sent-log file

## Returns

- `1` = cleanup completed
- `0` = operation failed

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- Missing files are simply ignored.
- This function does not disable diagnostics.
- If diagnostics are still enabled, new log files may be created again on the next relevant operation.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
