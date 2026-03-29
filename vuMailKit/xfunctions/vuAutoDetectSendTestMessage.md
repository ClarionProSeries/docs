---
title: "vuAutoDetectSendTestMessage"
summary: "Send a temporary SMTP test message using the supplied settings without requiring the developer to save a profile first."
function_name: "vuAutoDetectSendTestMessage"
category: "Autodetect"
last_updated: "2026-03-22"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectSendTestMessage

## Purpose

Send a temporary SMTP test message using the supplied settings without requiring the developer to save a profile first.

## Export name

- `vuAutoDetectSendTestMessage`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectSendTestMessage(LONG InOutBufLen,*CString InFromEmail,*CString InToEmail,*CString InSubjectPrefix,LONG InConfigOrigin,*CString InSmtpHost,LONG InSmtpPort,LONG InSmtpSecurityMode,LONG InSmtpAuthMode,*CString InSmtpUser,*CString InPassword,LONG InProviderId,*CString InOAuthAccountKey,*CString OutSmtpResponseCode,*CString OutSmtpResponseText),Signed,PROC,Pascal,Raw,Name('vuAutoDetectSendTestMessage')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| InOutBufLen | LONG | Shared length for the writable text buffers. | Pass the size of the text buffers. |
| InFromEmail | *CSTRING | From address for the test message. | Valid email address. |
| InToEmail | *CSTRING | Recipient address for the test message. | Valid email address. |
| InSubjectPrefix | *CSTRING | Optional subject prefix placed in the generated test subject. | May be blank. |
| InConfigOrigin | LONG | Indicates where the settings came from. | `0=Manual`, `1=Autodetect`. |
| InSmtpHost | *CSTRING | SMTP server host name. | Examples: `smtp.gmail.com`, `smtp.office365.com`. |
| InSmtpPort | LONG | SMTP server port. | Common values: `25`, `465`, `587`. |
| InSmtpSecurityMode | LONG | SMTP security mode. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| InSmtpAuthMode | LONG | SMTP auth mode. | `0=Unknown`, `1=Password`, `2=OAuth`. |
| InSmtpUser | *CSTRING | SMTP login/user name. | Usually the email address. |
| InPassword | *CSTRING | Password or app password for password-auth testing. | May be blank when OAuth is used. |
| InProviderId | LONG | Provider ID for OAuth-aware testing. | `0=None`, `1=Google`, `2=Microsoft`, `3=Yahoo`. |
| InOAuthAccountKey | *CSTRING | OAuth account key used to locate tokens when OAuth auth mode is selected. | Usually the email address. |
| OutSmtpResponseCode | *CSTRING | Receives the SMTP response code text. | Examples: `250`, `535`, `0`. |
| OutSmtpResponseText | *CSTRING | Receives response text or the error message. | Writable text buffer. |

## Expected values and ranges

- `InConfigOrigin`: `0 = Manual`, `1 = Autodetect`.
- The generated subject suffix now uses mixed-case labels: `(Manual)` or `(Auto-Detect)`.
- `InSmtpSecurityMode`: `0 = None`, `1 = StartTls`, `2 = ImplicitTls`.
- `InSmtpAuthMode`: `0 = Unknown`, `1 = Password`, `2 = OAuth`.
- `InProviderId`: `0 = None`, `1 = Google`, `2 = Microsoft`, `3 = Yahoo`.
- `OutSmtpResponseCode` is text, not a numeric LONG output variable. Use a `CSTRING` buffer.

## Return value

- `1` = the test send completed successfully.
- `0` = the test send failed.

## Clarion example

```clarion
BufLen                  LONG
FromEmail               CSTRING(254)
ToEmail                 CSTRING(254)
SubjectPrefix           CSTRING(80)
ConfigOrigin            LONG
SmtpHost                CSTRING(254)
SmtpPort                LONG
SmtpSecurityMode        LONG
SmtpAuthMode            LONG
SmtpUser                CSTRING(254)
Password                CSTRING(254)
ProviderId              LONG
OAuthAccountKey         CSTRING(254)
SmtpResponseCode        CSTRING(32)
SmtpResponseText        CSTRING(512)
Result                  LONG

BufLen = SIZE(SmtpResponseText)
FromEmail = 'user@example.com'
ToEmail = 'user@example.com'
SubjectPrefix = 'vuMailKit test'
ConfigOrigin = 1
SmtpHost = 'smtp.example.com'
SmtpPort = 587
SmtpSecurityMode = 1
SmtpAuthMode = 0
SmtpUser = 'user@example.com'
Password = 'app-password'
ProviderId = 0
OAuthAccountKey = ''
CLEAR(SmtpResponseCode)
CLEAR(SmtpResponseText)

Result = vuAutoDetectSendTestMessage(BufLen, FromEmail, ToEmail, SubjectPrefix, ConfigOrigin, SmtpHost, |
  SmtpPort, SmtpSecurityMode, SmtpAuthMode, SmtpUser, Password, ProviderId, OAuthAccountKey, |
  SmtpResponseCode, SmtpResponseText)
```

## Notes

- This function is intended for setup-time validation.
- The generated body is now neutral and no longer brands the message as a vuMailKit message.
- This base function includes the outgoing SMTP settings in the generated body.
- Use `vuAutoDetectSendTestMessageEx` when you also want POP3 and IMAP settings included in the setup-record email body.
- A successful test does not persist anything by itself. Call the normal setters and `vuSaveProfile` when you want to keep the settings.
