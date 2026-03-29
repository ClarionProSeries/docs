---
title: "vuPOP3SetServer"
summary: "Sets the POP3 server name in memory."
description: "Sets the POP3 server name used by vuMailKit POP3 operations. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "POP3", "vupop3setserver"]
function_name: "vuPOP3SetServer"
category: "POP3 and Receiving"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SetServer()

```Prototype
vuPOP3SetServer(*CSTRING), LONG
```

## Description
Sets the POP3 server name stored in the live runtime configuration.

## Parameter
- `Value` - The text value to store.

## Return value
- Returns `0`.

## Typical use
Call this function before connecting or receiving mail when you want to configure the POP3 runtime values explicitly instead of loading them from saved globals or a managed profile.

## Example (Clarion)
```clarion
RC LONG

RC = vuPOP3SetServer('pop.example.com')
```

## Notes
- This updates the live runtime setting for the current session.
- If you later save globals or save the active profile, the current runtime value can be persisted.
- In normal wizard/profile-driven usage, developers often do not need to call these setters manually.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
