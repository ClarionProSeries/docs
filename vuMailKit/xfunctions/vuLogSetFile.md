---
title: "vuLogSetFile"
summary: "Sets the log file path used by vuMailKit mail logging."
description: "Sets the current runtime log file path used by vuMailKit mail logging. This is the preferred name for the older vuSetMailLog() alias. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vulogsetfile", "vusetmaillog", "log", "mail log"]
function_name: "vuLogSetFile"
category: "Logging"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuLogSetFile()

## Purpose
Sets the log file path in the live runtime configuration.

This is the preferred name for the old `vuSetMailLog()` alias.

## Parameters
- `xFileName` - Full path to the log file to use.

## Return value
- `1` - Success.

## What this changes
This function updates the current in-memory log file setting. After it is set, later mail logging uses the new path.

It does not automatically enable logging by itself. It only changes the file path.

## Persistence
If you want this setting to become part of the saved configuration, call `vuGlobalsSave()` after setting it.

In legacy compatibility mode, that saves through the old global storage path.
In managed profile mode, that updates the active managed profile.

## Example (Clarion)
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

## Notes
- Preferred name: `vuLogSetFile()`.
- Legacy alias: [vuSetMailLog()](vuSetMailLog.md).
- Use [vuLogGetFile()](vuLogGetFile.md) to read the current runtime value back.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
