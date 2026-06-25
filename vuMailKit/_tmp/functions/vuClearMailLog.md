
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuClearMailLog()

## Clarion prototype

**Prototype:** vuClearMailLog(), SIGNED, PROC, PASCAL, RAW, NAME('vuClearMailLog')

## Description

Clears the current legacy sent-mail CSV log file.

The file cleared is the mail log selected by:

- [vuLogSetFile()](vuLogSetFile.md)
- [vuSetMailLog()](vuSetMailLog.md)

This function is intentionally separate from diagnostics logging. It does **not** clear the diagnostics log or SMTP protocol log.

## Parameters

This function takes no parameters.

## Return value

| Value | Meaning |
|---|---|
| 1 | if the mail log was cleared, or if no mail log file is currently configured. |
| 0 | if the log file could not be cleared. Call [vuMailLastError()](vuMailLastError.md) for details. |

## Notes

- `vuLogSetFile()` / `vuSetMailLog()` select the legacy sent-mail CSV log.
- Successful and failed send attempts append CSV rows to that file.
- The CSV row format follows the old vuMail behavior:

```text
Date,Time,From,To,Subject,SavedEmailPath,ResultText
```

## Example (Clarion)

```clarion
Result SIGNED

Result = vuClearMailLog()
IF Result = 0
  MESSAGE('Could not clear mail log: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)