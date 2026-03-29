
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3Delete()

```Prototype
vuPOP3Delete(LONG), LONG
```

## Purpose
Marks one POP3 message for deletion on the server.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| MsgNo | LONG | 1-based POP3 message number to delete. |

## Return value
- `0` = message marked for deletion.
- `< 0` = invalid message number or POP3 command/state error.

## Notes
- The message is typically removed when the POP3 session ends cleanly.
- Use this only after you have loaded, processed, or archived the message you want to remove.

## Clarion example
```clarion
RC      LONG
MsgNo   LONG

MsgNo = 1
RC = vuPOP3Delete(MsgNo)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)