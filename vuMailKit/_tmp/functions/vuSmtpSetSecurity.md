
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpSetSecurity()

## Clarion prototype

**Prototype:** vuSmtpSetSecurity(*CSTRING InUser, *CSTRING InPassword, LONG InSecurityMode, LONG InUseSsl), SIGNED, PROC, PASCAL, RAW, NAME('vuSmtpSetSecurity')

## Purpose
Sets SMTP credentials and security flags used by vuMailKit send operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InUser | *CSTRING | SMTP login/user ID. |
| InPassword | *CSTRING | SMTP password. |
| InSecurityMode | LONG | Legacy SMTP security type value. |
| InUseSsl | LONG | SSL flag (0 off, non-zero on). |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Success. |

## Example (Clarion)
```clarion
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

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)