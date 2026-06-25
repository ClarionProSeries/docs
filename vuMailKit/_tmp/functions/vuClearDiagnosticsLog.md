
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuClearDiagnosticsLog()

## Clarion prototype

**Prototype:** vuClearDiagnosticsLog(), SIGNED, PROC, PASCAL, RAW, NAME('vuClearDiagnosticsLog')

## Description

Clears the current vuMailKit diagnostics log and SMTP protocol log files.

This function is the preferred clear function for diagnostics. The older diagnostics clear function remains supported:

- [vuDiagnosticsClearLogs()](vuDiagnosticsClearLogs.md)

This function does **not** clear the legacy sent-mail CSV log selected by `vuLogSetFile()` / `vuSetMailLog()`.

## Parameters

This function takes no parameters.

## Return value

| Value | Meaning |
|---|---|
| 1 | if diagnostics logs were cleared, or if no diagnostics files are currently configured. |
| 0 | if the logs could not be cleared. Call [vuMailLastError()](vuMailLastError.md) for details. |

## Notes

Use [vuClearMailLog()](vuClearMailLog.md) when you want to clear the legacy sent-mail CSV log.

## Example (Clarion)

```clarion
Result SIGNED

Result = vuClearDiagnosticsLog()
IF Result = 0
  MESSAGE('Could not clear diagnostics log: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)