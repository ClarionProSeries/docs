---
title: "vuOAuthDetectProviderFromEmail"
summary: "Inspects an email address and returns detected provider, auth mode, and reason text."
description: "Inspects an email address and returns detected provider, auth mode, and reason text. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "OAuth", "vuOAuthDetectProviderFromEmail"]
function_name: "vuOAuthDetectProviderFromEmail"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-04-19"
---
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthDetectProviderFromEmail()

```Prototype
vuOAuthDetectProviderFromEmail(*CSTRING InEmailAddress,*CSTRING OutProviderName,LONG OutProviderNameLen,*LONG OutAuthMode,*CSTRING OutReason,LONG OutReasonLen),LONG,PROC,PASCAL,RAW,NAME('vuOAuthDetectProviderFromEmail')
```

## Purpose

Inspects an email address and returns the detected provider name, recommended auth mode, and reason text.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InEmailAddress | *CSTRING | Input email address to inspect. |
| OutProviderName | *CSTRING | Output buffer receiving the detected provider name. |
| OutProviderNameLen | LONG | Size of the OutProviderName buffer in bytes. |
| OutAuthMode | *LONG | Output value receiving the recommended auth mode integer. |
| OutReason | *CSTRING | Output buffer receiving reason or status text from the detector. |
| OutReasonLen | LONG | Size of the OutReason buffer in bytes. |

## Return value / error codes

- 2: Microsoft detected and supported.
- 1: Google detected and supported.
- 0: Email is blank or the domain is not recognized as an OAuth provider.
- Negative provider ID: Provider was detected but is not supported by the current runtime configuration.
- -100: Invalid email format or missing domain.
- -9: Exception while detecting provider.

## Notes

- The function return value reports provider detection/support status.
- OutAuthMode is separate from the function return value.
- OutReason contains human-readable diagnostic text that explains the detection result.

## Example (Clarion)

```clarion
MAP
  MODULE('vuMailKit.dll')
    vuOAuthDetectProviderFromEmail(*CSTRING InEmailAddress,*CSTRING OutProviderName,LONG OutProviderNameLen,*LONG OutAuthMode,*CSTRING OutReason,LONG OutReasonLen),LONG,PROC,PASCAL,RAW,NAME('vuOAuthDetectProviderFromEmail')
  END
END

email           CSTRING(254)
outProvider     CSTRING(64)
outProviderMax  LONG
authMode        LONG
outReason       CSTRING(256)
outReasonMax    LONG
rc              LONG

email          = 'user@example.com'
outProvider    = ''
outProviderMax = SIZE(outProvider)
authMode       = 0
outReason      = ''
outReasonMax   = SIZE(outReason)

rc = vuOAuthDetectProviderFromEmail(email, outProvider, outProviderMax, authMode, outReason, outReasonMax)
MESSAGE('rc=' & rc & ' provider=' & outProvider & ' authMode=' & authMode & ' reason=' & outReason)
```

## See also

- vuOAuthSetProvider()
- vuOAuthBeginLogin()
- vuOAuthStatus()

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
