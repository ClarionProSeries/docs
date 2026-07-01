
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailLogLevel()

## Description

vuGetMailLogLevel() is a legacy-compatible alias for the preferred function name:

- [vuGetDiagnosticsLevel()](vuGetDiagnosticsLevel.md)

The legacy name remains exported and supported so existing applications continue to compile and run.

New code should use vuGetDiagnosticsLevel().

## Clarion prototype

**Prototype:** vuGetMailLogLevel(*LONG OutLogLevel), SIGNED, PROC, PASCAL, RAW, NAME('vuGetMailLogLevel')

## Important logging separation

Despite the legacy name, vuGetMailLogLevel() reports diagnostics verbosity only.

It does not read the sent-mail CSV/activity log path and does not report whether sent-mail CSV/activity logging is selected.

Use vuGetMailLog() or vuLogGetFile() to read the sent-mail CSV/activity log file path.

Use vuDiagnosticsGetFile() and vuGetDiagnosticsLevel() for diagnostics.

## Levels

| Value | Meaning |
|---:|---|
| 0 | Normal diagnostics. |
| 1 | Trace diagnostics. |

## Example (Clarion)

```clarion
Level  LONG
Result SIGNED

Result = vuGetMailLogLevel(Level)   ! Legacy alias for vuGetDiagnosticsLevel(Level)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)