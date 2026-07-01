
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetFromReplyTo()

## Clarion prototype

**Prototype:** vuGetFromReplyTo(*CSTRING OutFromEmail, *CSTRING OutReplyToEmail), SIGNED, PROC, PASCAL, RAW, NAME('vuGetFromReplyTo')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuSmtpGetFromReplyTo()](vuSmtpGetFromReplyTo.md)

This function is exported for backward compatibility and behaves identically to vuSmtpGetFromReplyTo().

## Example (Clarion)
```clarion
rc      LONG
fromAdr CSTRING(256)
replyTo CSTRING(256)

fromAdr = ''
replyTo = ''
rc = vuGetFromReplyTo(fromAdr, replyTo)

IF rc = 1
  MESSAGE('From=' & CLIP(fromAdr) & '|Reply-To=' & CLIP(replyTo))
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)