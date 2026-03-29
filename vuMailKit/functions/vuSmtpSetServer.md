---
title: "vuSmtpSetServer"
summary: "Sets the outbound SMTP server name and port."
description: "Sets the outbound SMTP server name and port. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vusmtpsetserver", "vusetmailserver"]
function_name: "vuSmtpSetServer"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-01-07"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpSetServer()

## Description
Sets the outbound SMTP server name and port. (legacy name: `vuSetMailServer()`).

Previously exported as (legacy name, still supported):

- [vuSetMailServer()](vuSetMailServer.md)

### Parameters

- `xServer` (CSTRING) - SMTP server host name or IP.
- `xPort` (LONG) - SMTP server port.

### Returns

A LONG value indicating the result.

- 1: Success (this function always returns 1)

### Notes

This sets the values stored in the current vuMailKit session. Use `vuGlobalsSave()` if you want to persist them to the registry.

### Example (Clarion)

````clarion
ROUTINE:Test_vuSmtpSetServer   ROUTINE
  DATA
cServer   CSTRING(256)
ThePort   LONG
RC        LONG

  CODE
  cServer = 'smtp.example.com'
  ThePort = 587
  RC = vuSmtpSetServer(cServer, ThePort)
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
