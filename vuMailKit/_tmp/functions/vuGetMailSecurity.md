
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailSecurity()

## Clarion prototype

**Prototype:** vuGetMailSecurity(*CSTRING OutUser, *CSTRING OutPassword, *LONG OutSecurityMode, *LONG OutUseSsl), SIGNED, PROC, PASCAL, RAW, NAME('vuGetMailSecurity')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuSmtpGetSecurity()](vuSmtpGetSecurity.md)

This function is exported for backward compatibility and behaves identically to `vuSmtpGetSecurity()`.

## Example (Clarion)
```clarion
rc       LONG
userName CSTRING(256)
password CSTRING(256)
secMode  LONG
useSsl   LONG

userName = ''
password = ''
secMode = 0
useSsl = 0

rc = vuGetMailSecurity(userName, password, secMode, useSsl)
IF rc = 1
  MESSAGE('User=' & CLIP(userName) & '|Security=' & secMode & '|SSL=' & useSsl)
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)