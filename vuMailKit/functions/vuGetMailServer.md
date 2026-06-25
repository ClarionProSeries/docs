---
title: "vuGetMailServer"
summary: "Legacy alias for vuSmtpGetServer()."
description: "Legacy vuMail function name. This function is an alias for the preferred function name."
keywords: ["vuMailKit", "vuMail", "vugetmailserver", "vusmtpgetserver"]
function_name: "vuGetMailServer"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-01-07"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailServer()

## Clarion prototype

**Prototype:** vuGetMailServer(*CSTRING OutServer, *LONG OutPort), SIGNED, PROC, PASCAL, RAW, NAME('vuGetMailServer')

## Description
This is the legacy vuMail function name for `vuSmtpGetServer()`.

Preferred function name:

- [vuSmtpGetServer()](vuSmtpGetServer.md)

This function is exported for backward compatibility and behaves identically to `vuSmtpGetServer()`.

## Example (Clarion)
```clarion
rc     LONG
server CSTRING(256)
port   LONG

server = ''
port = 0
rc = vuGetMailServer(server, port)

IF rc = 1
  MESSAGE('SMTP server=' & CLIP(server) & '|Port=' & port)
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
