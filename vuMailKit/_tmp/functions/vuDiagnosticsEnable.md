
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuDiagnosticsEnable()

## Purpose

Enables diagnostic logging using the configured diagnostics file. If no diagnostics file has been configured yet, a default file path is chosen automatically.

## Export name

- vuDiagnosticsEnable

## Clarion prototype

**Prototype:** vuDiagnosticsEnable(), SIGNED, PROC, PASCAL, RAW, NAME('vuDiagnosticsEnable')

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use vuMailLastError() for more detail when needed.

## Example (Clarion)
```clarion
rc LONG

rc = vuDiagnosticsEnable()
IF rc = 0
  MESSAGE('Diagnostics could not be enabled: ' & vuMailLastError())
END
```

## Notes

- This turns on the diagnostics writer used by vuMailKit troubleshooting output.
- Use vuSetDiagnosticsLevel() to choose Normal or Trace diagnostics detail.
- Normal diagnostics keep the practical SMTP send timeline. Trace diagnostics add lower-level troubleshooting detail.
- Diagnostics logging is separate from the sent-mail CSV/activity log selected by vuSetMailLog() or vuLogSetFile().
- vuMailKitSmtpProtocol.log is not part of normal customer-facing diagnostics.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)