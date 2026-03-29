
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuDiagnosticsEnable()

## Purpose

Enables diagnostic logging using the configured diagnostics file. If no diagnostics file has been configured yet, a default file path is chosen automatically.

## Export name

- `vuDiagnosticsEnable`

## Clarion prototype (Inside Global MAP)

- `vuDiagnosticsEnable(),SIGNED,PROC,PASCAL,RAW,NAME('vuDiagnosticsEnable')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- This turns on the diagnostics writer used by SMTP transport diagnostics.
- The SMTP protocol log is written in the same folder as the diagnostics file.