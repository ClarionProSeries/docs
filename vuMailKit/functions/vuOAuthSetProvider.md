---
title: "vuOAuthSetProvider"
summary: "Sets the default OAuth provider name in vuMailKit global settings."
description: "Sets the default OAuth provider name in vuMailKit global settings. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "OAuth", "vuOAuthSetProvider"]
function_name: "vuOAuthSetProvider"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthSetProvider()

```Prototype
vuOAuthSetProvider(*CSTRING InProvider),LONG,PROC,PASCAL,RAW,NAME('vuOAuthSetProvider')
```

## Purpose
Stores the default OAuth provider identifier used by OAuth helper operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InProvider | *CSTRING | Provider name to store (for example `Microsoft` or `Google`). |

## Return value / error codes
- `1`: Success.
- `-3`: Bad request (provider string was blank).

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthSetProvider(*CSTRING InProvider),LONG,PROC,PASCAL,RAW,NAME('vuOAuthSetProvider')
  END
END

rc        LONG
provider  CSTRING(64)

provider = 'Microsoft'
rc = vuOAuthSetProvider(provider)
IF rc <> 1
  MESSAGE('vuOAuthSetProvider failed: ' & rc)
END
```

## Notes
- This sets a runtime/global default provider; it does not begin sign-in or fetch tokens.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)