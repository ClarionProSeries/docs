---
title: "vuLogGetFile"
summary: "Returns the current runtime log file path."
description: "Returns the log file path currently held in the live vuMailKit runtime. This is the preferred name for the older vuGetMailLog() alias. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vuloggetfile", "vugetmaillog", "log", "mail log"]
function_name: "vuLogGetFile"
category: "Logging"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuLogGetFile()

## Purpose
Returns the current log file path from live runtime memory.

This is the preferred name for the old `vuGetMailLog()` alias.

## Parameters
- None.

## Return value
Returns the current log file path as a text result.

## What it returns
This function returns the current in-memory value, not a file-system scan and not a historical log location search.

If your code changed the value earlier in the session, this function returns the updated runtime value.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuLogGetFile(),CSTRING,PASCAL,RAW,NAME('vuLogGetFile')
  END
END

MESSAGE('Current log file: ' & vuLogGetFile())
```

## Notes
- Preferred name: `vuLogGetFile()`.
- Legacy alias: [vuGetMailLog()](vuGetMailLog.md).
- Use [vuLogSetFile()](vuLogSetFile.md) to change the runtime value.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
