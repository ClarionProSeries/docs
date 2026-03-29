---
title: "vuOAuthGetProvider"
summary: "Gets the default OAuth provider name stored in vuMailKit global settings."
description: "Gets the default OAuth provider name stored in vuMailKit global settings. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "OAuth", "vuOAuthGetProvider"]
function_name: "vuOAuthGetProvider"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthGetProvider()

```Prototype
vuOAuthGetProvider(*CSTRING), LONG
```

## Purpose
Returns the currently stored default OAuth provider string.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| OutProvider | *CSTRING | Output buffer that receives the provider name. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthGetProvider(*CSTRING),LONG,PASCAL,RAW,NAME('vuOAuthGetProvider')
  END
END

rc           LONG
outProvider  CSTRING(64)

outProvider = ''
rc = vuOAuthGetProvider(outProvider)
IF rc = 1
  MESSAGE('Provider=' & outProvider)
ELSE
  MESSAGE('vuOAuthGetProvider failed: ' & rc)
END
```

## Notes
- The output buffer should be sized for at least 64 bytes to match runtime usage.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
