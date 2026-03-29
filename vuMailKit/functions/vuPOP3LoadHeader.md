---
title: "vuPOP3LoadHeader"
summary: "Loads POP3 headers for a message by message number into the current in-process session."
description: "Loads POP3 headers for a message by message number into the current in-process session. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3LoadHeader"]
function_name: "vuPOP3LoadHeader"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3LoadHeader()

```Prototype
vuPOP3LoadHeader(LONG InMessageNumber),LONG,PROC,PASCAL,RAW,NAME('vuPOP3LoadHeader')
```

## Purpose
Retrieves and parses only message headers for one POP3 message.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InMessageNumber | LONG | 1-based POP3 message number to load. |

## Return value / error codes
- `0`: Headers loaded successfully.
- `< 0`: POP3 command, message index, or parse/state failure.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3LoadHeader(LONG InMessageNumber),LONG,PROC,PASCAL,RAW,NAME('vuPOP3LoadHeader')
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
- Call `vuPOP3Connect` first.
- For MIME body and attachment parsing, use `vuPOP3LoadEmail` instead.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)