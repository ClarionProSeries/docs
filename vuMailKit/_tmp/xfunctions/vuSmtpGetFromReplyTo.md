
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSmtpGetFromReplyTo()

```Prototype
vuSmtpGetFromReplyTo(*CSTRING, *CSTRING), LONG
```

## Purpose
Reads default `From` and `Reply-To` values from vuMailKit runtime globals.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| FromAddr | *CSTRING | Output buffer receiving current sender address. |
| ReplyTo | *CSTRING | Output buffer receiving current reply-to address. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpGetFromReplyTo(*CSTRING,*CSTRING),LONG,PASCAL,RAW,NAME('vuSmtpGetFromReplyTo')
  END
END

rc        LONG
fromAddr  CSTRING(260)
replyTo   CSTRING(260)

CLEAR(fromAddr)
CLEAR(replyTo)
rc = vuSmtpGetFromReplyTo(fromAddr, replyTo)
IF rc = 1
  MESSAGE('From=' & fromAddr & ' Reply-To=' & replyTo)
ELSE
  MESSAGE('vuSmtpGetFromReplyTo failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuGetFromReplyTo()](vuGetFromReplyTo.md).
- Returns runtime values; call `vuGlobalsLoad()` first if you need persisted values reloaded.
- AuthMode/OAuth is not used by this function.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)