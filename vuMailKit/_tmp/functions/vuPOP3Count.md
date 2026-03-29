
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3Count()

```Prototype
vuPOP3Count(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Count')
```

## Purpose
Gets the message count from the active POP3 mailbox.

## Parameters
This function has no parameters.

## Return value / error codes
- `>= 0`: Number of available messages.
- `< 0`: POP3 state or command error.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3Count(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Count')
  END
END

msgCount LONG

msgCount = vuPOP3Count()
IF msgCount >= 0
  MESSAGE('POP3 messages available: ' & msgCount)
END
```

## Notes
- Requires a successful `vuPOP3Connect()` call first.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)