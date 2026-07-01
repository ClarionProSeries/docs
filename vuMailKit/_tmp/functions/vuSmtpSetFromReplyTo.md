
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpSetFromReplyTo()

## Clarion prototype

**Prototype:** vuSmtpSetFromReplyTo(*CSTRING InFromEmail, *CSTRING InReplyToEmail), SIGNED, PROC, PASCAL, RAW, NAME('vuSmtpSetFromReplyTo')

## Purpose
Sets default sender (From) and Reply-To values used for outgoing mail.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFromEmail | *CSTRING | Sender address. Blank allowed; non-blank must be valid email format. |
| InReplyToEmail | *CSTRING | Reply-To address. Blank allowed; non-blank must be valid email format. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Success. |
| 0 | Invalid non-blank FromAddr or ReplyTo. |

## Example (Clarion)
```clarion
rc        LONG
fromAddr  CSTRING(260)
replyTo   CSTRING(260)

fromAddr = 'sender@example.com'
replyTo = 'support@example.com'
rc = vuSmtpSetFromReplyTo(fromAddr, replyTo)
IF rc <> 1
  MESSAGE('Invalid From/Reply-To or other failure: ' & rc)
END
```

## Notes
- Legacy alias: [vuSetFromReplyTo()](vuSetFromReplyTo.md).
- This function validates non-empty addresses and returns 0 if either address is invalid.
- Writes runtime memory only; call vuGlobalsSave() to persist.
- AuthMode/OAuth is not changed by this function.

## From value rules

vuSmtpSetFromReplyTo() accepts the same From forms as vuSetFromReplyTo():

- Plain email address
- Full mailbox like Sender Name &lt;sender@example.com&gt;
- Display name only, which reuses the existing saved/default sender address

If a display name is supplied without an email address and there is no existing saved/default sender address available, the call fails.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)