---
title: "vuAutoDetectSendTestMessageEx"
summary: "Send a temporary SMTP test message and include both outgoing and incoming setup details in the generated message body."
function_name: "vuAutoDetectSendTestMessageEx"
category: "Autodetect"
last_updated: "2026-06-23"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectSendTestMessageEx

## Purpose

Send a temporary SMTP test message and include both outgoing and incoming setup details in the generated message body.

## Export name

- vuAutoDetectSendTestMessageEx

## Clarion prototype

**Prototype:** vuAutoDetectSendTestMessageEx(LONG InOutBufLen, *CSTRING InFromEmail, *CSTRING InToEmail, *CSTRING InSubjectPrefix, LONG InConfigOrigin, *CSTRING InSmtpHost, LONG InSmtpPort, LONG InSmtpSecurityMode, LONG InSmtpAuthMode, *CSTRING InSmtpUser, *CSTRING InPassword, LONG InProviderId, *CSTRING InOAuthAccountKey, *CSTRING InPopHost, LONG InPopPort, LONG InPopSecurityMode, LONG InPopAuthMode, *CSTRING InPopUser, *CSTRING InImapHost, LONG InImapPort, LONG InImapSecurityMode, LONG InImapAuthMode, *CSTRING InImapUser, *CSTRING OutSmtpResponseCode, *CSTRING OutSmtpResponseText), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectSendTestMessageEx')

## Legacy save-folder and mail-log behavior

Setup/test-send messages honor the same legacy save-folder and sent-mail log settings as normal sends. If vuSetSaveFolder() or vuGlobalsSetEmailFolder() has set a valid folder before the test send, vuMailKit saves the outgoing test message as an .eml file before the SMTP send attempt. If vuSetMailLog() or vuLogSetFile() has selected a sent-mail CSV log, the test-send attempt is logged. Successful sends include the saved path when an outgoing copy was saved. Failed sends are logged with the result text.

## Example (Clarion)
```clarion
rc       LONG
fromAdr  CSTRING(256)
toAdr    CSTRING(256)
subject  CSTRING(128)
smtpHost CSTRING(256)
smtpUser CSTRING(256)
password CSTRING(256)
code     CSTRING(64)
text     CSTRING(512)

fromAdr = 'sender@example.com'
toAdr = 'recipient@example.com'
subject = 'vuMailKit setup test'
smtpHost = 'smtp.example.com'
smtpUser = 'sender@example.com'
password = 'app-password-or-smtp-password'
code = ''
text = ''

rc = vuAutoDetectSendTestMessageEx(SIZE(text), fromAdr, toAdr, subject, |
     0, smtpHost, 587, 2, 0, smtpUser, password, 0, '', |
     '', 0, 0, 0, '', '', 0, 0, 0, '', code, text)

MESSAGE('Send test rc=' & rc & '|Response=' & CLIP(text))
```

## Notes

- This additive export keeps the original vuAutoDetectSendTestMessage stable.
- The generated subject uses mixed-case suffixes: (Auto-Detect) or (Manual).
- The generated body uses the same wording style shown in the vuMailKit Email Setup Wizard, including SIGN-IN METHOD labels such as Username / Password, Google Sign-In, and Microsoft Sign-In.
- When POP3 and IMAP values are supplied, those sections are included in the body so the message also serves as a setup record.

## From display name behavior

- If a sender display name has been configured, vuMailKit formats the From header as Display Name &lt;email@address&gt;.
- If no display name exists, vuMailKit falls back to the plain email address.
- This preserves compatibility with legacy code that only supplies an address.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
