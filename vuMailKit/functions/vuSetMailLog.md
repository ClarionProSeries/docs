---
title: "vuSetMailLog"
summary: "Legacy alias for vuLogSetFile(); sets the sent-mail CSV log."
description: "Legacy vuMail function name. This function is an alias for the preferred function name."
keywords: ["vuMailKit", "vuMail", "vusetmaillog", "vulogsetfile"]
function_name: "vuSetMailLog"
category: "Logging"
version_added: "Legacy"
last_updated: "2026-06-26"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailLog()

## Clarion prototype

**Prototype:** vuSetMailLog(*CSTRING InFileName), SIGNED, PROC, PASCAL, RAW, NAME('vuSetMailLog')

## Description
This is the legacy vuMail function name for vuLogSetFile().

Preferred function name:

- [vuLogSetFile()](vuLogSetFile.md)

This function is exported for backward compatibility and behaves identically to vuLogSetFile(). It selects the legacy sent-mail CSV log file. Successful and failed send attempts append rows in this format:

```text
Date,Time,From,To,Subject,SavedEmailPath,ResultText
```

This is separate from diagnostics logging. Use vuDiagnosticsSetFile() for diagnostics and vuClearMailLog() to clear the sent-mail CSV log.

If an outgoing .eml copy is saved because vuSetSaveFolder() or vuGlobalsSetEmailFolder() is set, the SavedEmailPath field contains the saved .eml path. If no outgoing .eml copy is saved, that field is blank.

vuSetDiagnosticsLevel() and the legacy alias vuSetMailLogLevel() do not turn this CSV/activity log on or off. They control diagnostics verbosity only.

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
