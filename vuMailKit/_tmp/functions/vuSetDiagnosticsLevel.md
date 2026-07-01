
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetDiagnosticsLevel()

## Description

Sets the diagnostics verbosity level used when diagnostics logging is enabled.

This is the preferred function name for the behavior previously exposed as vuSetMailLogLevel(). The legacy name remains exported and supported, but new code should use vuSetDiagnosticsLevel() because the setting controls diagnostics detail, not the sent-mail CSV/activity log.

## Clarion prototype

**Prototype:** vuSetDiagnosticsLevel(LONG InLevel), SIGNED, PROC, PASCAL, RAW, NAME('vuSetDiagnosticsLevel')

## Parameters

- InLevel (LONG) - Diagnostics verbosity level.

## Levels

| Value | Meaning |
|---:|---|
| 0 | Normal diagnostics. Writes the practical send timeline and important setup results. |
| 1 | Trace diagnostics. Includes Normal output plus lower-level profile, enqueue, message-build, TLS, OAuth, and troubleshooting details. |

Values greater than zero are normalized to Trace.

The selected level is also stored with the vuMailKit settings so diagnostics that happen early in a later application startup can honor the same Normal or Trace choice.

## Return value

| Value | Meaning |
|---:|---|
| 1 | The diagnostics level was accepted. |
| 0 | The diagnostics level could not be set. Call vuMailLastError() for details. |

## Important logging separation

vuSetDiagnosticsLevel() controls diagnostics verbosity only.

It does not enable diagnostics logging, select the diagnostics log file, enable the sent-mail CSV/activity log, select the CSV log file, or create a separate SMTP protocol log.

Use these functions for diagnostics:

- vuDiagnosticsSetFile() selects the diagnostics log file.
- vuDiagnosticsEnable() turns diagnostics logging on.
- vuDiagnosticsDisable() turns diagnostics logging off.
- vuGetDiagnosticsLevel() reads the current diagnostics level.

Use these functions for the sent-mail CSV/activity log:

- vuSetMailLog() or vuLogSetFile() selects the sent-mail CSV/activity log file.
- vuGetMailLog() or vuLogGetFile() reads the sent-mail CSV/activity log file path.
- vuClearMailLog() clears the sent-mail CSV/activity log file.

## Legacy name

The old name is still supported:

- [vuSetMailLogLevel()](vuSetMailLogLevel.md)

That name is now documented as a legacy-compatible alias because it can sound like it controls the sent-mail CSV/activity log. It does not.

## Example (Clarion)

```clarion
DiagLog CSTRING(520)
Result  SIGNED

DiagLog = 'C:\vumailkit\logs\vuMailKit-diagnostics.log'
Result = vuDiagnosticsSetFile(DiagLog)

IF Result = 1
  Result = vuSetDiagnosticsLevel(1)   ! Trace diagnostics
  Result = vuDiagnosticsEnable()
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)