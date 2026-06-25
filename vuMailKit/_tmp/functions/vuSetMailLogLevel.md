
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailLogLevel()

## Purpose

Sets the verbosity level used by the diagnostic-style logging.

## Export name

- `vuSetMailLogLevel`

## Clarion prototype

**Prototype:** vuSetMailLogLevel(LONG InLogLevel), SIGNED, PROC, PASCAL, RAW, NAME('vuSetMailLogLevel')

## Parameters

- `InLogLevel` (LONG) - Log verbosity level.
  - 0 = Normal
  - 1 = Trace

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use `vuMailLastError()` for more detail when needed.

## Example (Clarion)
```clarion
rc LONG

rc = vuSetMailLogLevel(2)
IF rc = 0
  MESSAGE('Unable to set mail log level: ' & vuMailLastError())
END
```

## Notes

- This level applies to internal diagnostic-style logging, not the legacy sent-mail CSV rows written to the mail log selected by `vuLogSetFile()` / `vuSetMailLog()`.
- Normal is the default level.
- Trace adds deeper internal transport and setup details when diagnostics are enabled.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)