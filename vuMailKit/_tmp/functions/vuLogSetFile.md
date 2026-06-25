
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuLogSetFile()

## Description
Sets the legacy sent-mail CSV log file path. (legacy name: `vuSetMailLog()`).

Previously exported as (legacy name, still supported):

- [vuSetMailLog()](vuSetMailLog.md)

## Parameters

- `xFileName` (CSTRING) - Full path to the legacy sent-mail CSV log file to be used by vuMailKit.

## Return value

A LONG value indicating the result.

- 1: Success (this function always returns 1)

### Notes

Use `vuGlobalsSave()` if you want to persist it to the registry (key: "SentLogFile").

This file is a legacy sent-mail CSV log, not the diagnostics log. Each successful or failed send attempt appends one CSV row in this format:

```text
Date,Time,From,To,Subject,SavedEmailPath,ResultText
```

Use `vuDiagnosticsSetFile()` for diagnostic troubleshooting output. Use `vuClearMailLog()` to clear this sent-mail CSV log.

## Example (Clarion)

````clarion
ROUTINE:Test_vuLogSetFile   ROUTINE
  DATA
cLog   CSTRING(520)
RC     LONG

  CODE
  cLog = CLIP(PATH()) & '\MailLog.csv'
  RC = vuLogSetFile(cLog)
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)