---
title: "vuPOP3EmbeddedCID"
summary: "Legacy POP3 text getter retained for compatibility."
description: "Legacy POP3 text getter retained for compatibility. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vupop3embeddedcid"]
function_name: "vuPOP3EmbeddedCID"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3EmbeddedCID()

```Prototype
vuPOP3EmbeddedCID(LONG InIndex),CSTRING,PROC,PASCAL,RAW,NAME('vuPOP3EmbeddedCID')
```

This legacy function is declared as returning `CSTRING` in Clarion to preserve original vuMail template behavior. Under the hood, the export returns a pointer to a null-terminated C string buffer, and Clarion consumes it directly as text, as shown in the examples below.

## Description
Gets embedded cid text for the selected item using the original vuMail compatibility behavior.

## Parameters
- `Index` (LONG): 1-based item index.

## Return value / error codes
- Returns text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- If no text is available, the result may be empty.

## Example (Clarion)
```clarion
Index LONG

Index = 1
MESSAGE('Embedded CID: ' & vuPOP3EmbeddedCID(Index))
```

## Notes
- This is a legacy compatibility exception. New text-return APIs should use caller-owned `*CSTRING` output buffers.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
