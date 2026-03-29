---
title: "vuPOP3SetAuthMode"
summary: "Sets the POP3 authentication mode to password or OAuth behavior."
description: "Sets the POP3 authentication mode to password or OAuth behavior. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3SetAuthMode"]
function_name: "vuPOP3SetAuthMode"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SetAuthMode()

```Prototype
vuPOP3SetAuthMode(LONG InAuthMode),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SetAuthMode')
```

## Purpose
Configures POP3 authentication mode used by subsequent POP3 connect operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InAuthMode | LONG | `0` = password authentication, non-zero = OAuth authentication. |

## Return value / error codes
- `1`: Auth mode stored successfully.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SetAuthMode(LONG InAuthMode),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SetAuthMode')
    vuPOP3GetAuthMode(),LONG,PASCAL,RAW,NAME('vuPOP3GetAuthMode')
  END
END

mode LONG
rc   LONG

mode = 1  ! OAuth
rc = vuPOP3SetAuthMode(mode)
IF rc = 1
  MESSAGE('POP3 auth mode now ' & vuPOP3GetAuthMode())
END
```

## Notes
- This setting controls whether POP3 uses password (`0`) or OAuth (`non-zero`) during `vuPOP3Connect`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)