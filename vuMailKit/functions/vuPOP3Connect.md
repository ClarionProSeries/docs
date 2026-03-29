---
title: "vuPOP3Connect"
summary: "Opens a POP3 connection using host, user, and password values."
description: "Opens a POP3 connection using host, user, and password values. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3Connect"]
function_name: "vuPOP3Connect"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3Connect()

```Prototype
vuPOP3Connect(*CSTRING InServer,*CSTRING InUser,*CSTRING InPassword),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Connect')
```

## Purpose
Connects and authenticates to a POP3 server for subsequent POP3 receive operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InServer | *CSTRING | POP3 server host name (or IP). |
| InUser | *CSTRING | POP3 user/login name. |
| InPassword | *CSTRING | POP3 password. |

## Return value / error codes
- `0`: Connected successfully.
- `< 0`: Connection or authentication failed.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3Connect(*CSTRING InServer,*CSTRING InUser,*CSTRING InPassword),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Connect')
  END
END

rc       LONG
host     CSTRING(128)
userId   CSTRING(128)
password CSTRING(128)

host     = 'pop.example.com'
userId   = 'user@example.com'
password = 'secret'

rc = vuPOP3Connect(host, userId, password)
IF rc < 0
  MESSAGE('POP3 connect failed: ' & rc)
END
```

## Notes
- Call this before `vuPOP3Count`, `vuPOP3LoadHeader`, or `vuPOP3LoadEmail`.
- Pair with `vuPOP3Disconnect()` when finished.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)