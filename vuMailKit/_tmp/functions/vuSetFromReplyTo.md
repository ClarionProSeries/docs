
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetFromReplyTo()

## Clarion prototype

**Prototype:** vuSetFromReplyTo(*CSTRING InFromEmail, *CSTRING InReplyToEmail), SIGNED, PROC, PASCAL, RAW, NAME('vuSetFromReplyTo')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuSmtpSetFromReplyTo()](vuSmtpSetFromReplyTo.md)

This function is exported for backward compatibility and behaves identically to `vuSmtpSetFromReplyTo()`.

## From value rules

`vuSetFromReplyTo()` now accepts any of these forms for the From value:

- Plain email address: `sender@example.com`
- Full mailbox: `Sender Name <sender@example.com>`
- Display name only: `Technical Support`

Behavior:

- Plain address stores the sender address only.
- Full mailbox stores both the sender address and the display name.
- Display-name-only uses the existing saved/default sender address and updates only the display name.

If a display name is supplied without an email address and there is no existing saved/default sender address available, the call fails.

## Example (Clarion)
```clarion
rc      LONG
fromAdr CSTRING(256)
replyTo CSTRING(256)

fromAdr = 'sales@example.com'
replyTo = 'support@example.com'

rc = vuSetFromReplyTo(fromAdr, replyTo)
IF rc = 0
  MESSAGE('From/Reply-To was not accepted: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)