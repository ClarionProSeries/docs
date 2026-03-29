
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuAutoDetectTestSettings

## Purpose

Probe supplied SMTP, POP, and IMAP settings and write test-result text into the output buffers.

## Export name

- `vuAutoDetectTestSettings`

## Clarion prototype (Inside Global MAP)

- `vuAutoDetectTestSettings(LONG InOutBufLen,*CSTRING InSmtpHost,LONG InSmtpPort,LONG InSmtpSecurityMode,*CSTRING InPopHost,LONG InPopPort,LONG InPopSecurityMode,*CSTRING InImapHost,LONG InImapPort,LONG InImapSecurityMode,*CSTRING OutSmtpTestResult,*CSTRING OutPopTestResult,*CSTRING OutImapTestResult),SIGNED,PROC,PASCAL,RAW,NAME('vuAutoDetectTestSettings')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| InOutBufLen | LONG | Shared length for the writable text result buffers. | Pass the size of the result buffers. |
| InSmtpHost | *CSTRING | SMTP host to test. | May be blank if SMTP is not being tested. |
| InSmtpPort | LONG | SMTP port to test. | Common values: `25`, `465`, `587`. |
| InSmtpSecurityMode | LONG | SMTP security mode to test. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| InPopHost | *CSTRING | POP host to test. | May be blank if POP is not being tested. |
| InPopPort | LONG | POP port to test. | Common values: `110`, `995`. |
| InPopSecurityMode | LONG | POP security mode to test. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| InImapHost | *CSTRING | IMAP host to test. | May be blank if IMAP is not being tested. |
| InImapPort | LONG | IMAP port to test. | Common values: `143`, `993`. |
| InImapSecurityMode | LONG | IMAP security mode to test. | `0=None`, `1=StartTls`, `2=ImplicitTls`. |
| OutSmtpTestResult | *CSTRING | Receives the SMTP probe result text. | Writable text buffer. |
| OutPopTestResult | *CSTRING | Receives the POP probe result text. | Writable text buffer. |
| OutImapTestResult | *CSTRING | Receives the IMAP probe result text. | Writable text buffer. |

## Expected values and ranges

- Port values are the literal port numbers to test.
- Security mode values: `0 = None`, `1 = StartTls`, `2 = ImplicitTls`.

## Return value

- `1` = at least one test completed successfully enough to return useful results.
- `0` = the requested tests failed.

## Clarion example

```clarion
BufLen                  LONG
SmtpHost                CSTRING(254)
SmtpPort                LONG
SmtpSecurityMode        LONG
PopHost                 CSTRING(254)
PopPort                 LONG
PopSecurityMode         LONG
ImapHost                CSTRING(254)
ImapPort                LONG
ImapSecurityMode        LONG
SmtpTestResult          CSTRING(512)
PopTestResult           CSTRING(512)
ImapTestResult          CSTRING(512)
Result                  LONG

BufLen = SIZE(SmtpTestResult)
SmtpHost = 'smtp.example.com'
SmtpPort = 587
SmtpSecurityMode = 1
PopHost = 'pop.example.com'
PopPort = 995
PopSecurityMode = 1
ImapHost = 'imap.example.com'
ImapPort = 993
ImapSecurityMode = 1
CLEAR(SmtpTestResult)
CLEAR(PopTestResult)
CLEAR(ImapTestResult)

Result = vuAutoDetectTestSettings(BufLen, SmtpHost, SmtpPort, SmtpSecurityMode, PopHost, PopPort, |
  PopSecurityMode, ImapHost, ImapPort, ImapSecurityMode, SmtpTestResult, PopTestResult, ImapTestResult)
```

## Notes

- Use this when you want connectivity checks without actually sending a message.
- Blank host names can be used to skip transports your setup screen is not testing yet.