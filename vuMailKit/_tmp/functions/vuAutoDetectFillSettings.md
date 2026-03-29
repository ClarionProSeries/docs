
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuAutoDetectFillSettings

## Purpose

Auto-detect provider settings from an email address and fill writable output buffers with the recommended values. This legacy-compatible entry now runs the full deep-scan pipeline.

## Export name

- `vuAutoDetectFillSettings`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectFillSettings(*CSTRING InEmailAddress,LONG InOutBufLen,*CSTRING OutProfileEmailAddress,*LONG OutConfidence,*LONG OutDetectSource,*LONG OutProviderId,*LONG OutSmtpAuthModeHint,*LONG OutPopAuthModeHint,*LONG OutImapAuthModeHint,*CSTRING OutSmtpHost,*LONG OutSmtpPort,*LONG OutSmtpSecurityMode,*CSTRING OutSmtpUser,*CSTRING OutPopHost,*LONG OutPopPort,*LONG OutPopSecurityMode,*CSTRING OutPopUser,*CSTRING OutImapHost,*LONG OutImapPort,*LONG OutImapSecurityMode,*CSTRING OutImapUser),SIGNED,PROC,PASCAL,RAW,NAME('vuAutoDetectFillSettings')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| InEmailAddress | *CSTRING | Input email address to inspect, such as `user@example.com`. | Must be a non-blank email address. |
| InOutBufLen | LONG | Common buffer length used for the writable text output buffers. | Pass the size of the text buffers, such as `SIZE(Buffer)`. |
| OutProfileEmailAddress | *CSTRING | Receives the normalized profile email address. | Writable text buffer. |
| OutConfidence | *LONG | Receives confidence level for the detection result. | Higher values mean higher confidence. |
| OutDetectSource | *LONG | Receives the source used for the detection result. | `0=None`, `1=KnownProvider`, `2=DnsSrv`, `3=DomainAutoconfig`, `4=ISPDB`, `5=MxHeuristic`, `6=GuessProbe`. |
| OutProviderId | *LONG | Receives the detected provider ID. | `0=None`, `1=Google`, `2=Microsoft`, `3=Yahoo`. |
| OutSmtpAuthModeHint | *LONG | Receives the recommended SMTP auth mode. | `0=Unknown`, `1=Password`, `2=OAuth`. |
| OutPopAuthModeHint | *LONG | Receives the recommended POP auth mode. | `0=Unknown`, `1=Password`, `2=OAuth`. |
| OutImapAuthModeHint | *LONG | Receives the recommended IMAP auth mode. | `0=Unknown`, `1=Password`, `2=OAuth`. |
| OutSmtpHost | *CSTRING | Receives the detected SMTP host name. | Writable text buffer. |
| OutSmtpPort | *LONG | Receives the detected SMTP port. | Typical values are 25, 465, or 587. |
| OutSmtpSecurityMode | *LONG | Receives the detected SMTP security mode. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| OutSmtpUser | *CSTRING | Receives the suggested SMTP user name. | Usually the email address. |
| OutPopHost | *CSTRING | Receives the detected POP host name. | Writable text buffer. |
| OutPopPort | *LONG | Receives the detected POP port. | Typical values are 110 or 995. |
| OutPopSecurityMode | *LONG | Receives the detected POP security mode. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| OutPopUser | *CSTRING | Receives the suggested POP user name. | Usually the email address. |
| OutImapHost | *CSTRING | Receives the detected IMAP host name. | Writable text buffer. |
| OutImapPort | *LONG | Receives the detected IMAP port. | Typical values are 143 or 993. |
| OutImapSecurityMode | *LONG | Receives the detected IMAP security mode. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| OutImapUser | *CSTRING | Receives the suggested IMAP user name. | Usually the email address. |

## Expected values and ranges

- Provider IDs: `0 = None`, `1 = Google`, `2 = Microsoft`, `3 = Yahoo`.
- Detect source values: `0 = None`, `1 = KnownProvider`, `2 = DnsSrv`, `3 = DomainAutoconfig`, `4 = ISPDB`, `5 = MxHeuristic`, `6 = GuessProbe`.
- Auth mode hints: `0 = Unknown`, `1 = Password`, `2 = OAuth`.
- Security mode values: `0 = None`, `1 = StartTls`, `2 = ImplicitTls`.

## Return value

- `1` = detection succeeded and output values were filled as available.
- `0` = detection failed or no useful settings were found.

## Scan behavior

- `vuAutoDetectFillSettings` now behaves as the full deep-scan version for backward compatibility.
- For a faster first-pass lookup, use `vuAutoDetectFillSettingsFast`.
- For an explicit full scan, use `vuAutoDetectFillSettingsDeep`.

## Clarion example

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

Result = vuAutoDetectFillSettings(EmailAddress, BufLen, ProfileEmail, Confidence, DetectSource, ProviderId, |
  SmtpAuthModeHint, PopAuthModeHint, ImapAuthModeHint, SmtpHost, SmtpPort, SmtpSecurityMode, SmtpUser, |
  PopHost, PopPort, PopSecurityMode, PopUser, ImapHost, ImapPort, ImapSecurityMode, ImapUser)
```

## Notes

- This function is designed for setup wizards and first-run configuration screens.
- For the best user experience, use `vuAutoDetectFillSettingsFast` first and offer `vuAutoDetectFillSettingsDeep` only when the user wants a deeper scan.
- After detection, developers typically copy the detected values into the normal SMTP/POP globals, optionally send a test message, and then call `vuSaveProfile` to persist the configuration.