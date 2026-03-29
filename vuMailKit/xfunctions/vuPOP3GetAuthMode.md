---
title: "vuPOP3GetAuthMode"
summary: "Returns the POP3 authentication mode currently stored in memory."
description: "Returns the POP3 authentication mode currently stored in the live runtime configuration. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "POP3", "auth", "vupop3getauthmode"]
function_name: "vuPOP3GetAuthMode"
category: "POP3 and Receiving"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3GetAuthMode()

```Prototype
vuPOP3GetAuthMode(), LONG
```

## Description
Returns the POP3 authentication mode currently stored in the live runtime configuration.

## Return value
Returns the current numeric authentication mode.

## Notes
- Use this when you need to inspect the current POP3 runtime configuration.
- The meaning of the numeric value depends on the POP3 authentication modes supported by the build you are using.

## Example (Clarion)
```clarion
MESSAGE('POP3 auth mode: ' & vuPOP3GetAuthMode())
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
