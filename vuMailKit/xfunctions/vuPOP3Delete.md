---
title: "vuPOP3Delete"
summary: "Marks a POP3 message for deletion by message number."
description: "Marks a POP3 message for deletion by message number. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3Delete"]
function_name: "vuPOP3Delete"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

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
