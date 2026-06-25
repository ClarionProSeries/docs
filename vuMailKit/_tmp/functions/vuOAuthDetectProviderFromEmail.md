
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthDetectProviderFromEmail()

## Purpose

Inspects an email address and reports whether the domain maps to a known OAuth provider. This is mainly for setup screens and the vuMailKit Email Setup Wizard.

The function writes the detected provider name, recommended auth mode, and explanatory reason text to caller-supplied outputs.

## Clarion prototype

**Prototype:** vuOAuthDetectProviderFromEmail(*CSTRING InEmailAddress, *CSTRING OutProviderName, LONG OutProviderNameLen, *LONG OutAuthMode, *CSTRING OutReason, LONG OutReasonLen), LONG, PROC, PASCAL, RAW, NAME('vuOAuthDetectProviderFromEmail')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InEmailAddress | *CSTRING | Email address to inspect. |
| OutProviderName | *CSTRING | Output buffer receiving the detected provider name, such as google or microsoft. |
| OutProviderNameLen | LONG | Size of OutProviderName in bytes. |
| OutAuthMode | *LONG | Output LONG receiving the recommended auth mode. Current OAuth detections use 1. |
| OutReason | *CSTRING | Output buffer receiving the detection explanation or failure reason. |
| OutReasonLen | LONG | Size of OutReason in bytes. |

## Return value / error codes

| Value | Meaning |
|---|---|
| 2 | Microsoft provider detected and supported in the current runtime settings. |
| 1 | Google provider detected and supported in the current runtime settings. |
| 0 | Blank email or no OAuth provider detected for the domain. |
| -1 | Google provider detected, but not currently supported because it is disabled or required credentials are missing. |
| -2 | Microsoft provider detected, but not currently supported because it is disabled or required credentials are missing. |
| -3 | Yahoo/AOL provider detected but OAuth is not supported. Current detector builds normally leave Yahoo/AOL to standard mail autodetect instead. |
| -9 | Exception while detecting provider. |
| -100 | Invalid email format or missing/empty domain. |

## Example (Clarion)

```clarion
Result         LONG
EmailAddress   CSTRING(256)
ProviderName   CSTRING(64)
ProviderLen    LONG
AuthMode       LONG
ReasonText     CSTRING(512)
ReasonLen      LONG

EmailAddress = 'user@gmail.com'
CLEAR(ProviderName)
ProviderLen  = SIZE(ProviderName)
AuthMode     = 0
CLEAR(ReasonText)
ReasonLen    = SIZE(ReasonText)

Result = vuOAuthDetectProviderFromEmail(EmailAddress, ProviderName, ProviderLen, AuthMode, ReasonText, ReasonLen)
IF Result > 0
  MESSAGE('OAuth provider=' & ProviderName & '| AuthMode=' & AuthMode)
ELSE
  MESSAGE('OAuth detection result=' & Result & '| ' & ReasonText)
END
```

## Notes

- Gmail and googlemail.com map to Google.
- Outlook.com, Hotmail.com, Live.com, MSN.com, and onmicrosoft.com domains map to Microsoft.
- Custom Google Workspace or Microsoft 365 domains may not be identifiable from the email address alone. In that case, use Manual Configuration in the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md).
- Some older source comments and MAP samples call the fourth output OutProviderId and the final text output OutDomain. The current behavior is auth mode plus reason text.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)