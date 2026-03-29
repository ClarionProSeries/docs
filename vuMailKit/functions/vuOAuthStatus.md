---
title: "vuOAuthStatus"
summary: "Gets the current OAuth token/login status for a provider/account pair."
description: "Gets the current OAuth token/login status for a provider/account pair. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "OAuth", "vuOAuthStatus"]
function_name: "vuOAuthStatus"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthStatus()

```Prototype
vuOAuthStatus(*CSTRING Provider,*CSTRING AccountKey,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthStatus')
```

## Purpose
Queries OAuth status for a specific provider/account token store and returns provider/core status text.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier. |
| AccountKey | *CSTRING | Account key identifier. |
| OutText | *CSTRING | Output buffer receiving status text. |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `>= 0`: Status/result code from core OAuth status call.
- `-9`: Core unavailable or exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthStatus(*CSTRING Provider,*CSTRING AccountKey,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthStatus')
  END
END

rc         LONG
provider   CSTRING(64)
accountKey CSTRING(128)
outText    CSTRING(1024)
outLen     LONG

provider   = 'Microsoft'
accountKey = 'user@example.com'
outText    = ''
outLen     = SIZE(outText)

rc = vuOAuthStatus(provider, accountKey, outText, outLen)
MESSAGE('Status rc=' & rc & '| ' & outText)
```

## Notes
- Status checks only the specified Provider/AccountKey scope.
- Alias export [vuOAuth_Status()](vuOAuth_Status.md) is available for compatibility.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)