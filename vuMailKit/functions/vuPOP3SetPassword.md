---
title: "vuPOP3SetPassword"
summary: "Sets the POP3 password in memory."
description: "Sets the POP3 password used by vuMailKit POP3 receive operations."
keywords: ["vuMailKit", "vuMail", "POP3", "configuration", "Clarion", "vupop3setpassword"]
function_name: "vuPOP3SetPassword"
category: "POP3 and Receiving"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SetPassword()

## Clarion prototype

**Prototype:** vuPOP3SetPassword(*CSTRING InPassword), SIGNED, PROC, PASCAL, RAW, NAME('vuPOP3SetPassword')

## Description
Sets the POP3 password used by vuMailKit POP3 receive operations.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InPassword | *CSTRING | The value to store. |

## Return value
Returns 0 (this function always returns 0).

## Example (Clarion)

```Clarion
ROUTINE:Example   ROUTINE
  DATA
RC      LONG
Value   LONG

  CODE
  Value = 'example'
  RC = vuPOP3SetPassword(Value)
  STOP('RC=' & RC)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
