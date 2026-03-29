---
title: "vuOAuthDetectProviderFromEmail"
summary: "Detects OAuth provider and auth mode from an email address."
description: "Detects OAuth provider and auth mode from an email address. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "OAuth", "vuOAuthDetectProviderFromEmail"]
function_name: "vuOAuthDetectProviderFromEmail"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthDetectProviderFromEmail()

```Prototype
vuOAuthDetectProviderFromEmail(*CSTRING InEmailAddress,*CSTRING OutProviderName,LONG OutProviderNameLen,*LONG OutProviderId,*CSTRING OutDomain,LONG OutDomainLen),LONG,PROC,PASCAL,RAW,NAME('vuOAuthDetectProviderFromEmail')
```

## Purpose
Inspects an email address and returns the detected provider, auth mode, and reason text.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InEmailAddress | *CSTRING | Input email address to inspect. |
| OutProviderName | *CSTRING | Output buffer receiving detected provider name. |
| OutProviderNameLen | LONG | Size of `OutProvider` in bytes. |
| OutProviderId | *LONG | Output pointer receiving detected auth mode integer. |
| OutDomain | *CSTRING | Output buffer receiving detection reason text. |
| OutDomainLen | LONG | Size of `OutReason` in bytes. |

## Return value / error codes
- `>= 0`: Detection completed (provider/auth mode/result reason populated as available).
- `-9`: Exception while detecting provider.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthDetectProviderFromEmail(*CSTRING InEmailAddress,*CSTRING OutProviderName,LONG OutProviderNameLen,*LONG OutProviderId,*CSTRING OutDomain,LONG OutDomainLen),LONG,PROC,PASCAL,RAW,NAME('vuOAuthDetectProviderFromEmail')
  END
END

rc             LONG
email          CSTRING(256)
outProvider    CSTRING(64)
outProviderMax LONG
authMode       LONG
outReason      CSTRING(512)
outReasonMax   LONG

email          = 'user@example.com'
outProvider    = ''
outProviderMax = SIZE(outProvider)
authMode       = 0
outReason      = ''
outReasonMax   = SIZE(outReason)

rc = vuOAuthDetectProviderFromEmail(email, outProvider, outProviderMax, authMode, outReason, outReasonMax)
IF rc < 0
  MESSAGE('Detect failed: ' & rc & '| ' & outReason)
ELSE
  MESSAGE('Provider=' & outProvider & '| Mode=' & authMode & '| ' & outReason)
END
```

## Notes
- Pass writable `*LONG` and `*CSTRING` outputs so detection details can be returned.
- Detection output is heuristic and intended to help prefill OAuth settings.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)