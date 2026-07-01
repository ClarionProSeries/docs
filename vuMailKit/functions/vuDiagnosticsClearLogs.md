---
title: "vuDiagnosticsClearLogs"
summary: "Delete the current diagnostics log files."
description: "Delete the current diagnostics log files."
keywords: ["vuMailKit","function","vudiagnosticsclearlogs"]
function_name: "vuDiagnosticsClearLogs"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-06-25"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuDiagnosticsClearLogs()

## Purpose

Deletes the current diagnostics log file when it exists.

## Export name

- vuDiagnosticsClearLogs

## Clarion prototype

**Prototype:** vuDiagnosticsClearLogs(), SIGNED, PROC, PASCAL, RAW, NAME('vuDiagnosticsClearLogs')

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use vuMailLastError() for more detail when needed.

## Example (Clarion)
```clarion
rc LONG

rc = vuDiagnosticsClearLogs()
IF rc = 0
  MESSAGE('Diagnostic logs were not cleared: ' & vuMailLastError())
END
```

## Notes

- This is intended for troubleshooting so each test starts with clean log files.
- It attempts to delete only the diagnostics log. It no longer clears the legacy sent-mail CSV log. Use vuClearMailLog() for that file.

## Preferred clear function

vuClearDiagnosticsLog() is also available as the preferred diagnostics clear function name.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
