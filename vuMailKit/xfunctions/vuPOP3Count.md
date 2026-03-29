---
title: "vuPOP3Count"
summary: "Returns the number of messages currently available in the POP3 mailbox."
description: "Returns the number of messages currently available in the POP3 mailbox. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3Count"]
function_name: "vuPOP3Count"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3Count()

```Prototype
vuPOP3Count(), LONG
```

## Purpose
Returns the number of messages currently available in the connected POP3 mailbox.

## Parameters
This function takes no parameters.

## Return value
- `>= 0` = number of available messages.
- `< 0` = POP3 connection, state, or command error.

## Notes
- Requires a successful `vuPOP3Connect()` call first.
- Use this before iterating message numbers with functions such as `vuPOP3LoadHeader()` or full message load operations.

## Clarion example
```clarion
MsgCount   LONG

MsgCount = vuPOP3Count()
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
