---
title: "vuFailureNotice"
summary: "Requests a delivery failure notice for the next send operation."
description: "Requests a delivery failure notice for the next email sent through vuMailKit. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "delivery status", "dsn", "vufailurenotice"]
function_name: "vuFailureNotice"
category: "SMTP"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuFailureNotice()

```Prototype
vuFailureNotice(), LONG
```

## Description
Sets a runtime flag requesting that the next send operation ask for delivery-failure notification behavior where supported.

## Return value
- Returns `1` on success.

## When to use it
Call this function before `vuSendMail()` or `vuSendMailWait()` when you want the outgoing message to request failure-notice handling.

## Example (Clarion)
```clarion
RC LONG

RC = vuFailureNotice()
RC = vuSendMail(cFrom,cTo,cCC,cBCC,cSubject,cBody,cAttach)
```

## Notes
- This is a runtime send option. Set it before the send call you want it to affect.
- Delivery-status behavior ultimately depends on the receiving systems and mail infrastructure involved. A request does not guarantee that a notice will be generated or returned.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
