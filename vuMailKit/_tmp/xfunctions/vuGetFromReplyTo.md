
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGetFromReplyTo()

```Prototype
vuGetFromReplyTo(*CSTRING, *CSTRING), LONG
```

## Purpose
Gets the current runtime From address and Reply-To address.

This is the legacy `vuMail` function name for `vuSmtpGetFromReplyTo()`.

Preferred function name:

- [vuSmtpGetFromReplyTo()](vuSmtpGetFromReplyTo.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| FromAddress | *CSTRING | Receives the current From value. |
| ReplyToAddress | *CSTRING | Receives the current Reply-To value. |

## Return value
- `1` = values returned successfully.
- `0` = one or both values are not currently set.

## Notes
- This reads the current runtime values that the next send operation will use.
- It is useful when an application lets the user inspect or confirm the outbound identity before sending.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)