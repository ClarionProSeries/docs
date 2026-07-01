
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectFillSettingsDeep

## Purpose

Run the full autodetect pipeline including the slower deep-scan fallbacks.

## Export name

- vuAutoDetectFillSettingsDeep

## Clarion prototype

**Prototype:** vuAutoDetectFillSettingsDeep(*CSTRING InEmailAddress, LONG InOutBufLen, *CSTRING OutProfileEmailAddress, *LONG OutConfidence, *LONG OutDetectSource, *LONG OutProviderId, *LONG OutSmtpAuthModeHint, *LONG OutPopAuthModeHint, *LONG OutImapAuthModeHint, *CSTRING OutSmtpHost, *LONG OutSmtpPort, *LONG OutSmtpSecurityMode, *CSTRING OutSmtpUser, *CSTRING OutPopHost, *LONG OutPopPort, *LONG OutPopSecurityMode, *CSTRING OutPopUser, *CSTRING OutImapHost, *LONG OutImapPort, *LONG OutImapSecurityMode, *CSTRING OutImapUser), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectFillSettingsDeep')

## Example (Clarion)
```clarion
EmailAddress            CSTRING(254)
BufLen                  LONG
ProfileEmail            CSTRING(254)
Confidence              LONG
DetectSource            LONG
ProviderId              LONG
SmtpAuthModeHint        LONG
PopAuthModeHint         LONG
ImapAuthModeHint        LONG
SmtpHost                CSTRING(254)
SmtpPort                LONG
SmtpSecurityMode        LONG
SmtpUser                CSTRING(254)
PopHost                 CSTRING(254)
PopPort                 LONG
PopSecurityMode         LONG
PopUser                 CSTRING(254)
ImapHost                CSTRING(254)
ImapPort                LONG
ImapSecurityMode        LONG
ImapUser                CSTRING(254)
Result                  LONG

EmailAddress = 'user@example.com'
BufLen = SIZE(ProfileEmail)
CLEAR(ProfileEmail)
CLEAR(SmtpHost)
CLEAR(PopHost)
CLEAR(ImapHost)

Result = vuAutoDetectFillSettingsDeep(EmailAddress, BufLen, ProfileEmail, |
  Confidence, DetectSource, ProviderId, SmtpAuthModeHint, |
  PopAuthModeHint, ImapAuthModeHint, SmtpHost, SmtpPort, |
  SmtpSecurityMode, SmtpUser, PopHost, PopPort, PopSecurityMode, |
  PopUser, ImapHost, ImapPort, ImapSecurityMode, ImapUser)
```

## Notes

- Deep mode includes the fast checks plus the slower fallbacks such as domain autoconfig, ISPDB, MX heuristics, and guess-and-probe.
- This mode may take noticeably longer on unknown or mistyped domains.
- Use this when the user explicitly requests a deeper scan or when a fast pass did not find enough information.
- Return values, output parameters, provider IDs, auth hints, detect-source values, and security values are the same as vuAutoDetectFillSettings.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)