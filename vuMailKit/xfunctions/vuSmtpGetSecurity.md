---
title: "vuSmtpGetSecurity"
summary: "Gets SMTP user, password, security type, and SSL flag from runtime globals."
description: "Gets SMTP user, password, security type, and SSL flag from runtime globals. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusmtpgetsecurity", "vugetmailsecurity"]
function_name: "vuSmtpGetSecurity"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSmtpGetSecurity()

```Prototype
vuSmtpGetSecurity(*CSTRING, *CSTRING, *LONG, *LONG), LONG
```

## Purpose
Reads SMTP credentials and security flags from vuMailKit runtime globals.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| UserId | *CSTRING | Output buffer receiving SMTP login/user ID. |
| Password | *CSTRING | Output buffer receiving SMTP password. |
| SecType | *LONG | Receives legacy SMTP security type value. |
| SSL | *LONG | Receives SSL flag (`0` off, non-zero on). |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpGetSecurity(*CSTRING,*CSTRING,*LONG,*LONG),LONG,PASCAL,RAW,NAME('vuSmtpGetSecurity')
  END
END

rc       LONG
userId   CSTRING(260)
passwd   CSTRING(260)
secType  LONG
useSSL   LONG

CLEAR(userId)
CLEAR(passwd)
secType = 0
useSSL = 0
rc = vuSmtpGetSecurity(userId, passwd, secType, useSSL)
IF rc = 1
  MESSAGE('User=' & userId & ' SecType=' & secType & ' SSL=' & useSSL)
ELSE
  MESSAGE('vuSmtpGetSecurity failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuGetMailSecurity()](vuGetMailSecurity.md).
- Returns runtime memory values; call `vuGlobalsLoad()` first if needed.
- AuthMode/OAuth selection is handled by separate AuthMode/OAuth functions.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
