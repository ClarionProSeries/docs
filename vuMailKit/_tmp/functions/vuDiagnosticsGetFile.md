
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuDiagnosticsGetFile()

## Purpose

Gets the currently configured diagnostics log file path.

## Export name

- `vuDiagnosticsGetFile`

## Clarion prototype

**Prototype:** vuDiagnosticsGetFile(*CSTRING xFileName), SIGNED, PROC, PASCAL, RAW, NAME('vuDiagnosticsGetFile')

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use `vuMailLastError()` for more detail when needed.

## Example (Clarion)
```clarion
rc      LONG
diagLog CSTRING(260)

diagLog = ''
rc = vuDiagnosticsGetFile(diagLog)

IF rc = 1
  MESSAGE('Diagnostics log: ' & CLIP(diagLog))
END
```

## Notes

- Pass the address of a writable `CSTRING` buffer.
- If no diagnostics file has been configured yet, an empty string is returned.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)