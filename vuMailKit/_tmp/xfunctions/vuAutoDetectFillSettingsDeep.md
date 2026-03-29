
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectFillSettingsDeep

## Purpose

Run the full autodetect pipeline including the slower deep-scan fallbacks.

## Export name

- `vuAutoDetectFillSettingsDeep`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectFillSettingsDeep(*CString InEmailAddress,LONG InOutBufLen,*CString OutProfileEmailAddress,*LONG OutConfidence,*LONG OutDetectSource,*LONG OutProviderId,*LONG OutSmtpAuthModeHint,*LONG OutPopAuthModeHint,*LONG OutImapAuthModeHint,*CString OutSmtpHost,*LONG OutSmtpPort,*LONG OutSmtpSecurityMode,*CString OutSmtpUser,*CString OutPopHost,*LONG OutPopPort,*LONG OutPopSecurityMode,*CString OutPopUser,*CString OutImapHost,*LONG OutImapPort,*LONG OutImapSecurityMode,*CString OutImapUser),Signed,PROC,Pascal,Raw,Name('vuAutoDetectFillSettingsDeep')`

## Notes

- Deep mode includes the fast checks plus the slower fallbacks such as domain autoconfig, ISPDB, MX heuristics, and guess-and-probe.
- This mode may take noticeably longer on unknown or mistyped domains.
- Use this when the user explicitly requests a deeper scan or when a fast pass did not find enough information.
- Return values, output parameters, provider IDs, auth hints, detect-source values, and security values are the same as `vuAutoDetectFillSettings`.