---
title: "vuSetMailServer"
summary: "Legacy alias for vuSmtpSetServer()."
description: "Legacy vuMail function name. This function is an alias for the preferred function name. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusetmailserver", "vusmtpsetserver"]
function_name: "vuSetMailServer"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSetMailServer()

```Prototype
vuSetMailServer(*CSTRING, LONG), LONG
```

## Purpose
Sets the SMTP server name and port in the live runtime configuration.

This is the legacy `vuMail` function name for `vuSmtpSetServer()`.

Preferred function name:

- [vuSmtpSetServer()](vuSmtpSetServer.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| ServerName | *CSTRING | SMTP server host name to use. |
| Port | LONG | SMTP port to use. |

## Return value
- `1` = values accepted.
- `0` = the call was rejected.

## Notes
- This changes the current live runtime values immediately.
- In a legacy/manual workflow, call this before send operations.
- If you want the change to persist, save globals or save the active profile afterward.
- In wizard/profile-driven applications, most developers will not need to call this directly except to override settings at runtime.

## Clarion example
```clarion
ServerName   CSTRING(256)
RC           LONG

ServerName = 'smtp.example.com'
RC = vuSetMailServer(ServerName, 587)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
