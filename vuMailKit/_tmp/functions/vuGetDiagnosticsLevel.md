
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetDiagnosticsLevel()

## Description

Gets the current diagnostics verbosity level.

This is the preferred function name for the behavior previously exposed as vuGetMailLogLevel(). The legacy name remains exported and supported, but new code should use vuGetDiagnosticsLevel() because the setting describes diagnostics detail, not the sent-mail CSV/activity log.

## Clarion prototype

**Prototype:** vuGetDiagnosticsLevel(*LONG OutLevel), SIGNED, PROC, PASCAL, RAW, NAME('vuGetDiagnosticsLevel')

## Parameters

- OutLevel (*LONG) - Receives the current diagnostics verbosity level.

## Levels

| Value | Meaning |
|---:|---|
| 0 | Normal diagnostics. |
| 1 | Trace diagnostics. |

## Return value

| Value | Meaning |
|---:|---|
| 1 | The diagnostics level was returned. |
| 0 | The diagnostics level could not be returned. Call vuMailLastError() for details. |

## Important logging separation

vuGetDiagnosticsLevel() reads diagnostics verbosity only. Normal diagnostics are intended for the practical send timeline. Trace diagnostics add lower-level profile, enqueue, message-build, TLS, OAuth, and troubleshooting details.

It does not read the sent-mail CSV/activity log file path and does not tell you whether the sent-mail CSV/activity log is selected.

Use vuGetMailLog() or vuLogGetFile() to read the sent-mail CSV/activity log file path.

Use vuDiagnosticsGetFile() to read the diagnostics log file path.

## Legacy name

The old name is still supported:

- [vuGetMailLogLevel()](vuGetMailLogLevel.md)

That name is now documented as a legacy-compatible alias because it can sound like it reports the sent-mail CSV/activity log. It does not.

## Example (Clarion)

```clarion
Level  LONG
Result SIGNED

Result = vuGetDiagnosticsLevel(Level)
IF Result = 1
  CASE Level
  OF 0
    MESSAGE('Diagnostics level is Normal')
  OF 1
    MESSAGE('Diagnostics level is Trace')
  END
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)