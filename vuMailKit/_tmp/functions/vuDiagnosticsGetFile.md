
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuDiagnosticsGetFile()

## Purpose

Gets the currently configured diagnostics log file path.

## Export name

- `vuDiagnosticsGetFile`

## Clarion prototype (Inside Global MAP)

- `vuDiagnosticsGetFile(*CSTRING xFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuDiagnosticsGetFile')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- Pass the address of a writable `CSTRING` buffer.
- If no diagnostics file has been configured yet, an empty string is returned.