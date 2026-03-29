---
title: "vuHighPriority"
summary: "Marks the next sent email as high priority."
description: "Marks the next sent email as high priority. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vuhighpriority"]
function_name: "vuHighPriority"
category: "SMTP"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuHighPriority()

```Prototype
vuHighPriority(),SIGNED,PROC,PASCAL,RAW,NAME('vuHighPriority')
```

## Description
Sets the runtime flag that marks the next email sent through vuMailKit as high priority.

## Return value
Returns 1 on success.

## Notes
- Set this before sending so the next send operation can apply it.

### Example

````clarion
ROUTINE:Test_vuHighPriority   ROUTINE
  DATA
RC      LONG

  CODE
  RC = vuHighPriority()
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
