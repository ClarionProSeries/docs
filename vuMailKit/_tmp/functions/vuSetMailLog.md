
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailLog()

## Clarion prototype

**Prototype:** vuSetMailLog(*CSTRING InFileName), SIGNED, PROC, PASCAL, RAW, NAME('vuSetMailLog')

## Description
This is the legacy vuMail function name for `vuLogSetFile()`.

Preferred function name:

- [vuLogSetFile()](vuLogSetFile.md)

This function is exported for backward compatibility and behaves identically to `vuLogSetFile()`. It selects the legacy sent-mail CSV log file. Successful and failed send attempts append rows in this format:

```text
Date,Time,From,To,Subject,SavedEmailPath,ResultText
```

This is separate from diagnostics logging. Use `vuDiagnosticsSetFile()` for diagnostics and `vuClearMailLog()` to clear the sent-mail CSV log.

## Example (Clarion)
```clarion
rc      LONG
logFile CSTRING(260)

logFile = 'C:\MyApp\Logs\sent-mail.csv'
rc = vuSetMailLog(logFile)

IF rc = 0
  MESSAGE('Mail log was not accepted: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)