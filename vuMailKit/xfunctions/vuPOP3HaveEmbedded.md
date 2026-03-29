---
title: "vuPOP3HaveEmbedded"
summary: "Reports whether the loaded POP3 message contains embedded content."
description: "Reports whether the loaded POP3 message contains embedded content. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vupop3haveembedded"]
function_name: "vuPOP3HaveEmbedded"
category: "POP3 and Receiving"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3HaveEmbedded()

```Prototype
vuPOP3HaveEmbedded(), LONG
```

## Description
Returns a flag indicating whether the currently loaded POP3 message includes embedded inline content such as CID-linked images.

## Return value
- `1` if yes
- `0` if no

## Typical flow
1. Connect to the POP3 mailbox.
2. Load a message header or full message with `vuPOP3LoadHeader()` or `vuPOP3LoadEmail()`.
3. Call this function to decide what to do next.

## Example (Clarion)
```clarion
IF (vuPOP3HaveHTMLText() = 1)
  MESSAGE('This message has HTML text.')
END
```

## Notes
- These functions only describe the message currently loaded into the internal POP3 message buffer.
- If no message has been loaded yet, the result is normally `0`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
