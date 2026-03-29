---
title: "vuPOP3EmbeddedCID"
summary: "Returns the content-id for one loaded embedded POP3 item using the legacy text-return behavior."
description: "Returns the content-id for one loaded embedded POP3 item using the legacy text-return behavior. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vupop3embeddedcid"]
function_name: "vuPOP3EmbeddedCID"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3EmbeddedCID(Index)

```Prototype
vuPOP3EmbeddedCID(LONG Index), CSTRING
```

## Purpose
Returns the content-id value for one embedded inline part from the currently loaded POP3 message.

This is useful when you need to match inline HTML references such as `cid:` links to the embedded parts stored in the message.

## Parameters
- `Index` (LONG): 1-based embedded item index.

## Return value
- Returns the content-id text for the selected embedded item.
- Returns an empty string if the index is invalid or no content-id is available.

## Example (Clarion)
```clarion
Index LONG

Index = 1
MESSAGE('Embedded CID: ' & vuPOP3EmbeddedCID(Index))
```

## Notes
- Load the message first with `vuPOP3LoadEmail()`.
- This function uses the original vuMail text-return behavior.
- In Clarion it is declared as returning `CSTRING` to preserve the legacy usage style.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
