---
title: "vuGetFromReplyTo"
summary: "Legacy alias for vuSmtpGetFromReplyTo()."
description: "Legacy vuMail function name. This function is an alias for vuSmtpGetFromReplyTo() and behaves identically. Use vuSmtpGetFromReplyTo() for new development."
keywords: ["vuMailKit", "vuMail", "vugetfromreplyto", "vusmtpgetfromreplyto"]
function_name: "vuGetFromReplyTo"
category: "SMTP"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetFromReplyTo()

## Clarion prototype

**Prototype:** vuGetFromReplyTo(*CSTRING OutFromEmail, *CSTRING OutReplyToEmail), SIGNED, PROC, PASCAL, RAW, NAME('vuGetFromReplyTo')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuSmtpGetFromReplyTo()](vuSmtpGetFromReplyTo.md)

This function is exported for backward compatibility and behaves identically to `vuSmtpGetFromReplyTo()`.

## Example (Clarion)
```clarion
rc      LONG
fromAdr CSTRING(256)
replyTo CSTRING(256)

fromAdr = ''
replyTo = ''
rc = vuGetFromReplyTo(fromAdr, replyTo)

IF rc = 1
  MESSAGE('From=' & CLIP(fromAdr) & '|Reply-To=' & CLIP(replyTo))
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
