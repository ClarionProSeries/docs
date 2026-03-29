---
title: "vuOAuthSetProvider"
summary: "Sets the default OAuth provider name in vuMailKit global settings."
description: "Sets the default OAuth provider name in vuMailKit global settings. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "OAuth", "vuOAuthSetProvider"]
function_name: "vuOAuthSetProvider"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthSetProvider()

```Prototype
vuOAuthSetProvider(*CSTRING), LONG
```

## Purpose
Stores the default OAuth provider identifier used by OAuth helper operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider name to store (for example `Microsoft` or `Google`). |

## Return value / error codes
- `1`: Success.
- `-3`: Bad request (provider string was blank).

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthSetProvider(*CSTRING),LONG,PASCAL,RAW,NAME('vuOAuthSetProvider')
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

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
