---
title: "vuPOP3Size"
summary: "Returns the size, in bytes, of a POP3 message by message number."
description: "Returns the size, in bytes, of a POP3 message by message number. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vupop3size", "pop3"]
function_name: "vuPOP3Size"
category: "POP3"
version_added: "Additive"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3Size()

```Prototype
vuPOP3Size(LONG), LONG
```

## Purpose
Returns the size (in bytes) of the specified message in the active POP3 session.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| MsgNo | LONG | 1-based POP3 message number. |

## Return value / error codes
- `> 0`: Message size in bytes.
- `0`: No size available (for example, message not found or no active message list).
- `< 0`: Error code from POP3 session operations.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3Size(LONG),LONG,PASCAL,RAW,NAME('vuPOP3Size')
  END
END

msgNo   LONG
sizeB   LONG

msgNo = 1
sizeB = vuPOP3Size(msgNo)
IF sizeB > 0
  MESSAGE('POP3 message #1 size: ' & sizeB & ' bytes')
ELSE
  MESSAGE('vuPOP3Size returned: ' & sizeB)
END
```

## Notes
- Use `vuPOP3Count()` first to validate message-number range.
- This call expects a connected POP3 session (`vuPOP3Connect()`).

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
