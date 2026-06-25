
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuDiagnosticsDisable()

## Purpose

Disables diagnostic logging without deleting the configured diagnostics file path.

## Export name

- `vuDiagnosticsDisable`

## Clarion prototype

**Prototype:** vuDiagnosticsDisable(), SIGNED, PROC, PASCAL, RAW, NAME('vuDiagnosticsDisable')

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use `vuMailLastError()` for more detail when needed.

## Example (Clarion)
```clarion
rc LONG

rc = vuDiagnosticsDisable()
IF rc = 0
  MESSAGE('Diagnostics could not be disabled: ' & vuMailLastError())
END
```

## Notes

- This does not delete existing log files.
- Use `vuDiagnosticsClearLogs()` if you want to remove prior log files.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)