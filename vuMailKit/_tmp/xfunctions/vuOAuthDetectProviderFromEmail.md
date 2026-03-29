
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthDetectProviderFromEmail()

```Prototype
vuOAuthDetectProviderFromEmail(*CSTRING, *CSTRING, LONG, *LONG, *CSTRING, LONG), LONG
```

## Purpose
Inspects an email address and returns the detected provider, auth mode, and reason text.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Email | *CSTRING | Input email address to inspect. |
| OutProvider | *CSTRING | Output buffer receiving detected provider name. |
| OutProviderMax | LONG | Size of `OutProvider` in bytes. |
| OutAuthMode | *LONG | Output pointer receiving detected auth mode integer. |
| OutReason | *CSTRING | Output buffer receiving detection reason text. |
| OutReasonMax | LONG | Size of `OutReason` in bytes. |

## Return value / error codes
- `>= 0`: Detection completed (provider/auth mode/result reason populated as available).
- `-9`: Exception while detecting provider.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthDetectProviderFromEmail(*CSTRING,*CSTRING,LONG,*LONG,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuOAuthDetectProviderFromEmail')
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

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)