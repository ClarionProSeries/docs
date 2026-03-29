---
title: "vuSmtpSetAuthMode"
summary: "Sets SMTP authentication mode to password or OAuth."
description: "Sets SMTP authentication mode to password or OAuth. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vusmtpsetauthmode", "smtp", "oauth"]
function_name: "vuSmtpSetAuthMode"
category: "SMTP"
version_added: "Additive"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpSetAuthMode()

```Prototype
vuSmtpSetAuthMode(LONG InAuthMode),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpSetAuthMode')
```

## Purpose
Sets SMTP auth mode (`0` for password auth, non-zero for OAuth auth).

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InAuthMode | LONG | `0` = password mode, non-zero = OAuth mode. |

## Return value / error codes
- `1`: Mode updated.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpSetAuthMode(LONG InAuthMode),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpSetAuthMode')
  END
END

rc LONG
rc = vuSmtpSetAuthMode(1)   ! switch to OAuth mode
MESSAGE('vuSmtpSetAuthMode rc=' & rc)
```

## Notes
- This setting is written into runtime globals and may be persisted by the library.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)