
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuValidateMailAddr()

```Prototype
vuValidateMailAddr(*CSTRING InEmailAddress),SIGNED,PROC,PASCAL,RAW,NAME('vuValidateMailAddr')
```

## Description
Validates a practical real-world internet email address. It rejects obvious malformed values such as missing top-level domains, spaces, trailing junk, malformed dots, bad domain labels, and slash characters in the local part. It also returns a separate suspicious status for certain typo-like domains such as gmail.com.com, lansrad.com.com so callers can warn the user before running deeper detection. This is used internally by helper flows such as vuSetFromReplyTo() and send-path validation.

### Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InEmailAddress | *CSTRING | Email address to validate. |

### Returns

- 1: Address is a valid practical internet email address
- 2: Address is valid but suspicious and should be reviewed
- 0: Address is malformed or incomplete

### Clarion caller note

Clean entry-field values before calling this function. In Clarion, a practical pattern is:

```Clarion
EmailAddress = CLIP(LEFT(EmailAddress))
DISPLAY(EmailAddress)
RC = vuValidateMailAddr(EmailAddress)
```

### Example

```Clarion
ROUTINE:Test_vuValidateMailAddr   ROUTINE
  DATA
RC            LONG
EmailAddress  CSTRING(260)

  CODE
  EmailAddress = '  user@example.com  '
  EmailAddress = CLIP(LEFT(EmailAddress))
  RC = vuValidateMailAddr(EmailAddress)
  STOP('RC=' & RC & '|Addr=' & EmailAddress)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)


Note: addresses with repeated trailing suffixes such as `example.com.com` now return `2` (valid but suspicious).