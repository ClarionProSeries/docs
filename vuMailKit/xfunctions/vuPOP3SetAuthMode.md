---
title: "vuPOP3SetAuthMode"
summary: "Sets the POP3 authentication mode in memory."
description: "Sets the POP3 authentication mode used by vuMailKit POP3 operations. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "POP3", "auth", "vupop3setauthmode"]
function_name: "vuPOP3SetAuthMode"
category: "POP3 and Receiving"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SetAuthMode()

```Prototype
vuPOP3SetAuthMode(LONG), LONG
```

## Description
Sets the POP3 authentication mode stored in the live runtime configuration.

## Parameter
- `Value` - Numeric authentication mode to store.

## Return value
- Returns `0`.

## Notes
- Set this before connecting when you need to override the current POP3 authentication mode.
- In most profile-driven setups, this is handled for you and does not need to be changed manually.

## Example (Clarion)
```clarion
RC LONG

RC = vuPOP3SetAuthMode(1)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
