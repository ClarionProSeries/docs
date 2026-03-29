
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuAutoDetectFillSettingsDeep

## Purpose

Run the full autodetect pipeline including the slower deep-scan fallbacks.

## Export name

- `vuAutoDetectFillSettingsDeep`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectFillSettingsDeep(*CSTRING InEmailAddress,LONG InOutBufLen,*CSTRING OutProfileEmailAddress,*LONG OutConfidence,*LONG OutDetectSource,*LONG OutProviderId,*LONG OutSmtpAuthModeHint,*LONG OutPopAuthModeHint,*LONG OutImapAuthModeHint,*CSTRING OutSmtpHost,*LONG OutSmtpPort,*LONG OutSmtpSecurityMode,*CSTRING OutSmtpUser,*CSTRING OutPopHost,*LONG OutPopPort,*LONG OutPopSecurityMode,*CSTRING OutPopUser,*CSTRING OutImapHost,*LONG OutImapPort,*LONG OutImapSecurityMode,*CSTRING OutImapUser),SIGNED,PROC,PASCAL,RAW,NAME('vuAutoDetectFillSettingsDeep')`

## Notes

- Deep mode includes the fast checks plus the slower fallbacks such as domain autoconfig, ISPDB, MX heuristics, and guess-and-probe.
- This mode may take noticeably longer on unknown or mistyped domains.
- Use this when the user explicitly requests a deeper scan or when a fast pass did not find enough information.
- Return values, output parameters, provider IDs, auth hints, detect-source values, and security values are the same as `vuAutoDetectFillSettings`.