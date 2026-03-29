
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpGetSecurity()

```Prototype
vuSmtpGetSecurity(*CSTRING OutUser,*CSTRING OutPassword,*LONG OutSecurityMode,*LONG OutUseSsl),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpGetSecurity')
```

## Purpose
Reads SMTP credentials and security flags from vuMailKit runtime globals.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| OutUser | *CSTRING | Output buffer receiving SMTP login/user ID. |
| OutPassword | *CSTRING | Output buffer receiving SMTP password. |
| OutSecurityMode | *LONG | Receives legacy SMTP security type value. |
| OutUseSsl | *LONG | Receives SSL flag (`0` off, non-zero on). |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpGetSecurity(*CSTRING OutUser,*CSTRING OutPassword,*LONG OutSecurityMode,*LONG OutUseSsl),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpGetSecurity')
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

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)