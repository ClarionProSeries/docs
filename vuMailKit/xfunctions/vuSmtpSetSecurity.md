---
title: "vuSmtpSetSecurity"
summary: "Sets SMTP user, password, security type, and SSL flag in runtime globals."
description: "Sets SMTP user, password, security type, and SSL flag in runtime globals. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusmtpsetsecurity", "vusetmailsecurity"]
function_name: "vuSmtpSetSecurity"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSmtpSetSecurity()

```Prototype
vuSmtpSetSecurity(*CSTRING, *CSTRING, LONG, LONG), LONG
```

## Purpose
Sets SMTP credentials and security flags used by vuMailKit send operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| UserId | *CSTRING | SMTP login/user ID. |
| Password | *CSTRING | SMTP password. |
| SecType | LONG | Legacy SMTP security type value. |
| SSL | LONG | SSL flag (`0` off, non-zero on). |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpSetSecurity(*CSTRING,*CSTRING,LONG,LONG),LONG,PASCAL,RAW,NAME('vuSmtpSetSecurity')
  END
END

rc       LONG
userId   CSTRING(260)
passwd   CSTRING(260)
secType  LONG
useSSL   LONG

userId = 'user@example.com'
passwd = 'app-password'
secType = 1
useSSL = 1
rc = vuSmtpSetSecurity(userId, passwd, secType, useSSL)
IF rc <> 1
  MESSAGE('vuSmtpSetSecurity failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuSetMailSecurity()](vuSetMailSecurity.md).
- Writes runtime memory only; call `vuGlobalsSave()` to persist.
- AuthMode/OAuth is configured separately via AuthMode/OAuth functions and is not set by this call.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
