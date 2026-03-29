
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuDiagnosticsDisable()

## Purpose

Disables diagnostic logging without deleting the configured diagnostics file path.

## Export name

- `vuDiagnosticsDisable`

## Clarion prototype (Inside Global MAP)

- `vuDiagnosticsDisable(),SIGNED,PROC,PASCAL,RAW,NAME('vuDiagnosticsDisable')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- This does not delete existing log files.
- Use `vuDiagnosticsClearLogs()` if you want to remove prior log files.