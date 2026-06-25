
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuDiagnosticsSetFile()

## Purpose

Sets the diagnostic log file path used by vuDiagnosticsEnable() and by protocol logging.

## Export name

- `vuDiagnosticsSetFile`

## Clarion prototype

**Prototype:** vuDiagnosticsSetFile(*CSTRING xFileName), SIGNED, PROC, PASCAL, RAW, NAME('vuDiagnosticsSetFile')

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use `vuMailLastError()` for more detail when needed.

## Example (Clarion)
```clarion
rc      LONG
diagLog CSTRING(260)

diagLog = 'C:\MyApp\Logs\vumailkit-diagnostics.log'
rc = vuDiagnosticsSetFile(diagLog)

IF rc = 1
  vuDiagnosticsEnable()
END
```

## Notes

- This file is separate from the legacy sent-mail CSV log selected by `vuLogSetFile()` / `vuSetMailLog()`.
- Pass the address of a `CSTRING` buffer containing the full path.
- Setting the file path does not automatically enable diagnostics.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)