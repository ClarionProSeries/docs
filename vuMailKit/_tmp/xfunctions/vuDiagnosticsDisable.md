
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuDiagnosticsDisable()

```Prototype
vuDiagnosticsDisable(),SIGNED,PROC,Pascal,Raw,Name('vuDiagnosticsDisable')
```

## Description

Disables diagnostic logging.

The current diagnostics file path is preserved so diagnostics can be turned back on later without forcing you to choose the file again.

## Returns

- `1` = diagnostics disabled
- `0` = operation failed

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- Disabling diagnostics does not delete existing log files.
- The on/off state is persisted under the vuMail registry compatibility area.
- Use `vuDiagnosticsClearLogs()` separately if you want the existing log files removed.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)