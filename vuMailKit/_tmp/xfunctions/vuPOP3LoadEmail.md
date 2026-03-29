
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3LoadEmail()

```Prototype
vuPOP3LoadEmail(LONG), LONG
```

## Purpose
Retrieves and parses one full POP3 message so body, attachment, and embedded-content APIs can be used.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| MsgNo | LONG | 1-based POP3 message number to load. |

## Return value / error codes
- `0`: Message loaded successfully.
- `< 0`: POP3 command, message index, or parse/state failure.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3LoadEmail(LONG),LONG,PASCAL,RAW,NAME('vuPOP3LoadEmail')
  END
END

rc    LONG
msgNo LONG

msgNo = 1
rc = vuPOP3LoadEmail(msgNo)
IF rc < 0
  MESSAGE('vuPOP3LoadEmail failed: ' & rc)
END
```

## Notes
- Call `vuPOP3Connect` first.
- Use `vuPOP3LoadHeader` when only headers are required.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)