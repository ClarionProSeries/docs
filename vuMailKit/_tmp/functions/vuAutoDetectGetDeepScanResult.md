
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectGetDeepScanResult

## Clarion prototype

**Prototype:** vuAutoDetectGetDeepScanResult(LONG InHandle, LONG InOutBufLen, *CSTRING OutProfileEmailAddress, *LONG OutConfidence, *LONG OutDetectSource, *LONG OutProviderId, *LONG OutSmtpAuthModeHint, *LONG OutPopAuthModeHint, *LONG OutImapAuthModeHint, *CSTRING OutSmtpHost, *LONG OutSmtpPort, *LONG OutSmtpSecurityMode, *CSTRING OutSmtpUser, *CSTRING OutPopHost, *LONG OutPopPort, *LONG OutPopSecurityMode, *CSTRING OutPopUser, *CSTRING OutImapHost, *LONG OutImapPort, *LONG OutImapSecurityMode, *CSTRING OutImapUser), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectGetDeepScanResult')

Copies final results from a completed asynchronous deep autodetect job into the same output variables used by vuAutoDetectFillSettings.

## Example (Clarion)
```clarion
rc           LONG
handle       LONG
email        CSTRING(256)
confidence   LONG
source       LONG
providerId   LONG
smtpAuth     LONG
popAuth      LONG
imapAuth     LONG
smtpHost     CSTRING(256)
smtpPort     LONG
smtpSecurity LONG
smtpUser     CSTRING(256)
popHost      CSTRING(256)
popPort      LONG
popSecurity  LONG
popUser      CSTRING(256)
imapHost     CSTRING(256)
imapPort     LONG
imapSecurity LONG
imapUser     CSTRING(256)

handle = 1   ! Use a completed deep-scan handle.

rc = vuAutoDetectGetDeepScanResult(handle, SIZE(email), email, |
     confidence, source, providerId, smtpAuth, popAuth, imapAuth, |
     smtpHost, smtpPort, smtpSecurity, smtpUser, |
     popHost, popPort, popSecurity, popUser, |
     imapHost, imapPort, imapSecurity, imapUser)

IF rc > 0
  MESSAGE('SMTP host=' & CLIP(smtpHost) & '|Port=' & smtpPort)
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)