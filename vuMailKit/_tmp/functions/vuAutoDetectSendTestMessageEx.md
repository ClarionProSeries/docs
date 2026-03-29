
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuAutoDetectSendTestMessageEx

## Purpose

Send a temporary SMTP test message and include both outgoing and incoming setup details in the generated message body.

## Export name

- `vuAutoDetectSendTestMessageEx`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectSendTestMessageEx(LONG InOutBufLen,*CSTRING InFromEmail,*CSTRING InToEmail,*CSTRING InSubjectPrefix,LONG InConfigOrigin,*CSTRING InSmtpHost,LONG InSmtpPort,LONG InSmtpSecurityMode,LONG InSmtpAuthMode,*CSTRING InSmtpUser,*CSTRING InPassword,LONG InProviderId,*CSTRING InOAuthAccountKey,*CSTRING InPopHost,LONG InPopPort,LONG InPopSecurityMode,LONG InPopAuthMode,*CSTRING InPopUser,*CSTRING InImapHost,LONG InImapPort,LONG InImapSecurityMode,LONG InImapAuthMode,*CSTRING InImapUser,*CSTRING OutSmtpResponseCode,*CSTRING OutSmtpResponseText),SIGNED,PROC,PASCAL,RAW,NAME('vuAutoDetectSendTestMessageEx')`

## Notes

- This additive export keeps the original `vuAutoDetectSendTestMessage` stable.
- The generated subject uses mixed-case suffixes: `(Auto-Detect)` or `(Manual)`.
- The generated body uses the same wording style shown in the setup wizard, including `SIGN-IN METHOD` labels such as `Username / Password`, `Google Sign-In`, and `Microsoft Sign-In`.
- When POP3 and IMAP values are supplied, those sections are included in the body so the message also serves as a setup record.

## From display name behavior

- If a sender display name has been configured, vuMailKit formats the From header as `Display Name <email@address>`.
- If no display name exists, vuMailKit falls back to the plain email address.
- This preserves compatibility with legacy code that only supplies an address.