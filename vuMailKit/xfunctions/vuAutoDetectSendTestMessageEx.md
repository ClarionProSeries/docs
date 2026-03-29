---
title: "vuAutoDetectSendTestMessageEx"
summary: "Send a temporary SMTP test message and include both outgoing and incoming setup details in the generated message body."
function_name: "vuAutoDetectSendTestMessageEx"
category: "Autodetect"
last_updated: "2026-03-22"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectSendTestMessageEx

## Purpose

Send a temporary SMTP test message and include both outgoing and incoming setup details in the generated message body.

## Export name

- `vuAutoDetectSendTestMessageEx`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectSendTestMessageEx(LONG InOutBufLen,*CString InFromEmail,*CString InToEmail,*CString InSubjectPrefix,LONG InConfigOrigin,*CString InSmtpHost,LONG InSmtpPort,LONG InSmtpSecurityMode,LONG InSmtpAuthMode,*CString InSmtpUser,*CString InPassword,LONG InProviderId,*CString InOAuthAccountKey,*CString InPopHost,LONG InPopPort,LONG InPopSecurityMode,LONG InPopAuthMode,*CString InPopUser,*CString InImapHost,LONG InImapPort,LONG InImapSecurityMode,LONG InImapAuthMode,*CString InImapUser,*CString OutSmtpResponseCode,*CString OutSmtpResponseText),Signed,PROC,Pascal,Raw,Name('vuAutoDetectSendTestMessageEx')`

## Notes

- This additive export keeps the original `vuAutoDetectSendTestMessage` stable.
- The generated subject uses mixed-case suffixes: `(Auto-Detect)` or `(Manual)`.
- The generated body uses the same wording style shown in the setup wizard, including `SIGN-IN METHOD` labels such as `Username / Password`, `Google Sign-In`, and `Microsoft Sign-In`.
- When POP3 and IMAP values are supplied, those sections are included in the body so the message also serves as a setup record.

## From display name behavior

- If a sender display name has been configured, vuMailKit formats the From header as `Display Name <email@address>`.
- If no display name exists, vuMailKit falls back to the plain email address.
- This preserves compatibility with legacy code that only supplies an address.
