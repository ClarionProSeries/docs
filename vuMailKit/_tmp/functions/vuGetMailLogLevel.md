
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailLogLevel()

## Purpose

Gets the current verbosity level used by the diagnostic-style logging.

## Export name

- `vuGetMailLogLevel`

## Clarion prototype

**Prototype:** vuGetMailLogLevel(*LONG OutLogLevel), SIGNED, PROC, PASCAL, RAW, NAME('vuGetMailLogLevel')

## Parameters

- `OutLogLevel` (LONG) - Receives the current log verbosity level.
  - 0 = Normal
  - 1 = Trace

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use `vuMailLastError()` for more detail when needed.

## Example (Clarion)
```clarion
rc       LONG
logLevel LONG

logLevel = 0
rc = vuGetMailLogLevel(logLevel)

IF rc = 1
  MESSAGE('Current log level: ' & logLevel)
END
```

## Notes

- This reports the current diagnostic-style logging level.
- If no value has been set yet, the default level is Normal.
- This function reports the level setting only. Diagnostic file output is controlled separately with `vuDiagnosticsSetFile()` and `vuDiagnosticsEnable()`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)