---
title: "vuPOP3HaveEmbedded"
summary: "Reports whether the currently loaded POP3 message contains embedded MIME parts."
description: "Reports whether the currently loaded POP3 message contains embedded MIME parts. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3HaveEmbedded"]
function_name: "vuPOP3HaveEmbedded"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3HaveEmbedded()

```Prototype
vuPOP3HaveEmbedded(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3HaveEmbedded')
```

## Purpose
Checks the currently loaded POP3 message and reports whether embedded (inline) MIME parts are present.

## Parameters
This function has no parameters.

## Return value / error codes
- `1`: Embedded content is present.
- `0`: No embedded content is present.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3HaveEmbedded(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3HaveEmbedded')
  END
END

hasEmbedded LONG

hasEmbedded = vuPOP3HaveEmbedded()
IF hasEmbedded = 1
  MESSAGE('Embedded content found.')
END
```

## Notes
- Load a full message with `vuPOP3LoadEmail` before querying embedded-part state.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
