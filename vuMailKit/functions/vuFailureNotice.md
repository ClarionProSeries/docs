---
title: "vuFailureNotice"
summary: "Requests a delivery failure notice for the next sent email."
description: "Requests a delivery failure notice for the next sent email. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vufailurenotice"]
function_name: "vuFailureNotice"
category: "SMTP"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuFailureNotice()

```Prototype
vuFailureNotice(),SIGNED,PROC,PASCAL,RAW,NAME('vuFailureNotice')
```

## Description
Sets the runtime flag that requests a failure notice (delivery failure notification) for the next email sent through vuMailKit.

## Return value
Returns 1 on success.

## Notes
- Set this before sending so the next send operation can apply it.

### Example

````clarion
ROUTINE:Test_vuFailureNotice   ROUTINE
  DATA
RC      LONG

  CODE
  RC = vuFailureNotice()
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
