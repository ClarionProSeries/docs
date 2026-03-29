---
title: "vuPOP3GetServer"
summary: "Returns POP3 server using the legacy vuMail text-return style."
description: "Returns POP3 server using the legacy vuMail text-return style. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vupop3getserver"]
function_name: "vuPOP3GetServer"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3GetServer()

```Prototype
vuPOP3GetServer(), CSTRING
```

## Description
Returns the POP3 server name currently stored in the live runtime configuration.

This is a legacy vuMail-style text getter. In Clarion, it is normally declared as returning `CSTRING`, even though the underlying compatibility behavior comes from an internal null-terminated text buffer managed by the DLL.

## Return value
- Returns the requested text value.
- Returns an empty string if no value is currently available.

## When to use it
Use this function when you want to inspect the current POP3 runtime configuration or read fields from the message that was most recently loaded with `vuPOP3LoadHeader()` or `vuPOP3LoadEmail()`.

## Example (Clarion)
```clarion
MESSAGE('POP3 server: ' & vuPOP3GetServer())
```

## Notes
- These legacy text getters are kept for compatibility with older Clarion code written for vuMail.
- For configuration values such as server, user, password, and folder, the returned value reflects the current live runtime setting.
- For message values such as subject, from, date, and body text, the returned value reflects the message currently loaded into the internal POP3 message buffer.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
