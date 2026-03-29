---
title: "vuSmtpGetAuthMode"
summary: "Returns the current SMTP authentication mode flag."
description: "Returns the current SMTP authentication mode flag. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusmtpgetauthmode", "smtp", "oauth"]
function_name: "vuSmtpGetAuthMode"
category: "SMTP"
version_added: "Additive"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSmtpGetAuthMode()

```Prototype
vuSmtpGetAuthMode(), LONG
```

## Purpose
Reads the current SMTP authentication mode from runtime globals.

## Return value / error codes
- `0`: Password-based SMTP mode.
- `1`: OAuth SMTP mode.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpGetAuthMode(),LONG,PASCAL,RAW,NAME('vuSmtpGetAuthMode')
  END
END

mode LONG
mode = vuSmtpGetAuthMode()
IF mode = 1
  MESSAGE('SMTP auth mode is OAuth')
ELSE
  MESSAGE('SMTP auth mode is password')
END
```

## Notes
- Pair with `vuSmtpSetAuthMode()` to switch modes.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
