---
title: "vuSetMailServer"
summary: "Legacy alias for vuSmtpSetServer()."
description: "Legacy vuMail function name. This function is an alias for the preferred function name."
keywords: ["vuMailKit", "vuMail", "vusetmailserver", "vusmtpsetserver"]
function_name: "vuSetMailServer"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-01-07"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailServer()

## Clarion prototype

**Prototype:** vuSetMailServer(*CSTRING InServer, LONG InPort), SIGNED, PROC, PASCAL, RAW, NAME('vuSetMailServer')

## Description
This is the legacy vuMail function name for vuSmtpSetServer().

Preferred function name:

- [vuSmtpSetServer()](vuSmtpSetServer.md)

This function is exported for backward compatibility and behaves identically to vuSmtpSetServer().

## Example (Clarion)
```clarion
rc     LONG
server CSTRING(256)

server = 'smtp.example.com'
rc = vuSetMailServer(server, 587)

IF rc = 0
  MESSAGE('SMTP server was not accepted: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
