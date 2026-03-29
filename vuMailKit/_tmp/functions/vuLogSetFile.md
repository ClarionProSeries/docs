
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuLogSetFile()

## Description
Sets the mail log file path. (legacy name: `vuSetMailLog()`).

Previously exported as (legacy name, still supported):

- [vuSetMailLog()](vuSetMailLog.md)

### Parameters

- `xFileName` (CSTRING) - Full path to the log file to be used by vuMailKit.

### Returns

A LONG value indicating the result.

- 1: Success (this function always returns 1)

### Notes

Use `vuGlobalsSave()` if you want to persist it to the registry (key: "SentLogFile").

### Example (Clarion)

````clarion
ROUTINE:Test_vuLogSetFile   ROUTINE
  DATA
cLog   CSTRING(520)
RC     LONG

  CODE
  cLog = CLIP(PATH()) & '\MailLog.txt'
  RC = vuLogSetFile(cLog)
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)