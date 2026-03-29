---
title: "vuPOP3HavePlainText"
summary: "Reports whether the currently loaded POP3 message contains a plain-text body."
description: "Reports whether the currently loaded POP3 message contains a plain-text body. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3HavePlainText"]
function_name: "vuPOP3HavePlainText"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3HavePlainText()

```Prototype
vuPOP3HavePlainText(),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3HavePlainText')
```

## Purpose
Checks the currently loaded POP3 message and reports whether a plain-text MIME body is available.

## Parameters
This function has no parameters.

## Return value / error codes
- `1`: Plain-text body content is present.
- `0`: Plain-text body content is not present.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3HavePlainText(),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3HavePlainText')
  END
END

hasText LONG

hasText = vuPOP3HavePlainText()
IF hasText = 1
  MESSAGE('Plain-text body is available.')
END
```

## Notes
- Load a full message with `vuPOP3LoadEmail` before checking MIME body availability.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
