---
title: "vuAutoDetectFillSettingsFast"
summary: "Run the quick autodetect pass for known providers and DNS SRV without entering the slower deep-scan probes."
function_name: "vuAutoDetectFillSettingsFast"
category: "Autodetect"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectFillSettingsFast

## Purpose

Run the quick autodetect pass for known providers and DNS SRV without entering the slower deep-scan probes.

## Export name

- `vuAutoDetectFillSettingsFast`

## Clarion prototype

**Prototype:** vuAutoDetectFillSettingsFast(*CSTRING InEmailAddress, LONG InOutBufLen, *CSTRING OutProfileEmailAddress, *LONG OutConfidence, *LONG OutDetectSource, *LONG OutProviderId, *LONG OutSmtpAuthModeHint, *LONG OutPopAuthModeHint, *LONG OutImapAuthModeHint, *CSTRING OutSmtpHost, *LONG OutSmtpPort, *LONG OutSmtpSecurityMode, *CSTRING OutSmtpUser, *CSTRING OutPopHost, *LONG OutPopPort, *LONG OutPopSecurityMode, *CSTRING OutPopUser, *CSTRING OutImapHost, *LONG OutImapPort, *LONG OutImapSecurityMode, *CSTRING OutImapUser), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectFillSettingsFast')

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

Result = vuAutoDetectFillSettingsFast(EmailAddress, BufLen, ProfileEmail, |
  Confidence, DetectSource, ProviderId, SmtpAuthModeHint, |
  PopAuthModeHint, ImapAuthModeHint, SmtpHost, SmtpPort, |
  SmtpSecurityMode, SmtpUser, PopHost, PopPort, PopSecurityMode, |
  PopUser, ImapHost, ImapPort, ImapSecurityMode, ImapUser)
```

## Notes

- This is the preferred first-pass autodetect for the vuMailKit Email Setup Wizard.
- Fast mode checks known-provider mappings first and DNS SRV second.
- Fast mode returns quickly when no match is found, which helps keep setup screens responsive.
- If Fast mode returns 0, developers can offer manual setup immediately or let the user request a deeper scan.
- Return values, output parameters, provider IDs, auth hints, detect-source values, and security values are the same as `vuAutoDetectFillSettings`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
