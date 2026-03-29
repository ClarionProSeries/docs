---
title: "vuPOP3SaveAttachment"
summary: "Saves a named attachment from the loaded POP3 message into the configured POP3 folder."
description: "Saves a named attachment from the loaded POP3 message into the configured POP3 folder. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3SaveAttachment"]
function_name: "vuPOP3SaveAttachment"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SaveAttachment(FileName)

```Prototype
vuPOP3SaveAttachment(*CSTRING), LONG
```

## Purpose
Saves one attachment from the currently loaded POP3 message by filename.

This is useful when you already know the attachment name you want and do not want to save every attachment in the message.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| FileName | *CSTRING | Attachment filename to save from the loaded message. |

## Return value / error codes
- `1`: Attachment saved successfully.
- `0`: `FileName` is blank, the attachment was not found, or the save failed.

## Typical flow
- connect and load the message with `vuPOP3LoadEmail()`
- inspect attachment names with `vuPOP3AttachmentName()` if needed
- call `vuPOP3SaveAttachment()` for the specific file you want

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveAttachment(*CSTRING),LONG,PASCAL,RAW,NAME('vuPOP3SaveAttachment')
  END
END

rc       LONG
fileName CSTRING(260)

fileName = 'invoice.pdf'
rc = vuPOP3SaveAttachment(fileName)
IF rc = 0
  MESSAGE('Attachment save failed.')
END
```

## Notes
- Call `vuPOP3LoadEmail()` before saving attachments.
- Output folder comes from the POP3 folder setting, typically via `vuPOP3SetFolder()`.
- If multiple attachments share an unexpected name pattern, make sure you inspect the actual loaded message before saving.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
