---
title: "vuSmtpGetFromReplyTo"
summary: "Gets default From and Reply-To addresses from runtime globals."
description: "Gets default From and Reply-To addresses from runtime globals. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vusmtpgetfromreplyto", "vugetfromreplyto"]
function_name: "vuSmtpGetFromReplyTo"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpGetFromReplyTo()

```Prototype
vuSmtpGetFromReplyTo(*CSTRING OutFromEmail,*CSTRING OutReplyToEmail),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpGetFromReplyTo')
```

## Purpose
Reads default `From` and `Reply-To` values from vuMailKit runtime globals.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| OutFromEmail | *CSTRING | Output buffer receiving current sender address. |
| OutReplyToEmail | *CSTRING | Output buffer receiving current reply-to address. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpGetFromReplyTo(*CSTRING OutFromEmail,*CSTRING OutReplyToEmail),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpGetFromReplyTo')
  END
END

rc        LONG
fromAddr  CSTRING(260)
replyTo   CSTRING(260)

CLEAR(fromAddr)
CLEAR(replyTo)
rc = vuSmtpGetFromReplyTo(fromAddr, replyTo)
IF rc = 1
  MESSAGE('From=' & fromAddr & ' Reply-To=' & replyTo)
ELSE
  MESSAGE('vuSmtpGetFromReplyTo failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuGetFromReplyTo()](vuGetFromReplyTo.md).
- Returns runtime values; call `vuGlobalsLoad()` first if you need persisted values reloaded.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)