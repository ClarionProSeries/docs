---
title: "vuOAuthSetProviderEnabled"
summary: "Enable or disable OAuth support for a specific provider at runtime."
description: "Enable or disable OAuth support for a specific provider at runtime. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "oauth", "provider", "runtime"]
function_name: "vuOAuthSetProviderEnabled"
category: "OAuth"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthSetProviderEnabled()

```Prototype
vuOAuthSetProviderEnabled(LONG, LONG), LONG
```

## Purpose
Enable or suppress OAuth support for a specific provider during the current process.

This is mainly used to keep the setup experience honest. If the application has not supplied the needed app credentials, or the developer does not want OAuth offered for a provider, the application can disable that provider at runtime.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | LONG | Provider constant: `1` = Google, `2` = Microsoft, `3` = Yahoo/AOL. |
| EnableFlag | LONG | `1` enables OAuth consideration for that provider. `0` suppresses it. |

## Return value
- `1` = success.
- `0` = unknown provider.

## Notes
- This change is runtime only. It is not automatically persisted.
- Enabling Yahoo here does not create full Yahoo OAuth support. Yahoo OAuth remains disabled in the current product.
- A provider may still require valid client credentials and other prerequisites before OAuth is actually offered or allowed.

## See also
- [vuOAuthSetProvider()](vuOAuthSetProvider.md)
- [vuOAuthDetectProviderFromEmail()](vuOAuthDetectProviderFromEmail.md)
- [vuOAuthBeginLogin()](vuOAuthBeginLogin.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
