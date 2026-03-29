---
title: "vuPOP3LoadHeader"
summary: "Loads POP3 headers for a message by message number into the current in-process session."
description: "Loads POP3 headers for a message by message number into the current in-process session. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3LoadHeader"]
function_name: "vuPOP3LoadHeader"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3LoadHeader(MsgNo)

```Prototype
vuPOP3LoadHeader(LONG), LONG
```

## Purpose
Retrieves and parses only the headers for one POP3 message and places those headers into the current in-process message buffer.

This is the lighter-weight alternative to `vuPOP3LoadEmail()` when you only need header data.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| MsgNo | LONG | 1-based POP3 message number to load. |

## Return value / error codes
- `0`: Headers loaded successfully.
- `< 0`: POP3 command failure, invalid message number, or parse/state failure.

## Typical flow
- call `vuPOP3Connect()`
- optionally call `vuPOP3GetCount()` to see how many messages exist
- call `vuPOP3LoadHeader(MsgNo)` for the message you want to inspect
- use getters such as subject, from, date, and message-id

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3LoadHeader(LONG),LONG,PASCAL,RAW,NAME('vuPOP3LoadHeader')
  END
END

rc    LONG
msgNo LONG

msgNo = 1
rc = vuPOP3LoadHeader(msgNo)
IF rc < 0
  MESSAGE('vuPOP3LoadHeader failed: ' & rc)
END
```

## Notes
- Call `vuPOP3Connect()` first.
- This function is header-only. It does not fully load the MIME body tree.
- For body text, attachments, and embedded content, use `vuPOP3LoadEmail()` instead.
- Loading another message replaces the current in-process message buffer contents.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
