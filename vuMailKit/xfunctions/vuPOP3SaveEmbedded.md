---
title: "vuPOP3SaveEmbedded"
summary: "Saves one embedded content item from the loaded POP3 message into the configured POP3 folder."
description: "Saves one embedded content item from the loaded POP3 message into the configured POP3 folder. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3SaveEmbedded"]
function_name: "vuPOP3SaveEmbedded"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SaveEmbedded(FileName)

```Prototype
vuPOP3SaveEmbedded(*CSTRING), LONG
```

## Purpose
Saves one embedded inline content item from the currently loaded POP3 message by filename.

This is typically used for content referenced from HTML mail such as logos or inline images.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| FileName | *CSTRING | Embedded part filename or derived saved name to search for. |

## Return value / error codes
- `1`: Embedded content item saved successfully.
- `0`: `FileName` is blank, the embedded item was not found, or the save failed.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveEmbedded(*CSTRING),LONG,PASCAL,RAW,NAME('vuPOP3SaveEmbedded')
  END
END

rc       LONG
fileName CSTRING(260)

fileName = 'logo.png'
rc = vuPOP3SaveEmbedded(fileName)
IF rc = 0
  MESSAGE('Embedded content save failed.')
END
```

## Notes
- Call `vuPOP3LoadEmail()` before saving embedded content.
- Output folder comes from the POP3 folder setting.
- This function targets inline embedded parts, not regular attachments.
- Use `vuPOP3EmbeddedName()` and `vuPOP3EmbeddedCID()` to inspect what is available in the loaded message.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
