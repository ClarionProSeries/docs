
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3Delete()

```Prototype
vuPOP3Delete(LONG InMessageNumber),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Delete')
```

## Purpose
Marks one POP3 message for deletion on the server.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InMessageNumber | LONG | 1-based POP3 message number to delete. |

## Return value / error codes
- `0`: Message marked for deletion.
- `< 0`: Invalid message number or POP3 command/state error.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3Delete(LONG InMessageNumber),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Delete')
  END
END

rc    LONG
msgNo LONG

msgNo = 1
rc = vuPOP3Delete(msgNo)
```

## Notes
- Deletion is finalized by POP3 session semantics after disconnect/quit.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)