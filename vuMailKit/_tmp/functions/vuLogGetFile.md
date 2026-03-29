
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuLogGetFile()

## Description
Gets the mail log file path. (legacy name: `vuGetMailLog()`).

Previously exported as (legacy name, still supported):

- [vuGetMailLog()](vuGetMailLog.md)

### Parameters

- `xFileName` (CSTRING) - Receives the current log file path.

### Returns

A LONG value indicating the result.

- 1: Success (this function always returns 1)

### Notes

This returns the log file path from the current session.

### Example (Clarion)

````clarion
ROUTINE:Test_vuLogGetFile   ROUTINE
  DATA
cLog   CSTRING(520)
RC     LONG

  CODE
  cLog = ''
  RC = vuLogGetFile(cLog)
  STOP('RC=' & RC & '  MailLog=' & cLog)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)