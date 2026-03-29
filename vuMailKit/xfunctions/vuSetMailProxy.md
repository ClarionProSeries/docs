---
title: "vuSetMailProxy"
summary: "Legacy alias for vuNetSetProxy()."
description: "Legacy vuMail function name. This function is an alias for vuNetSetProxy() and behaves identically. Use vuNetSetProxy() for new development. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusetmailproxy", "vunetsetproxy"]
function_name: "vuSetMailProxy"
category: "Network"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSetMailProxy()

```Prototype
vuSetMailProxy(*CSTRING, LONG), LONG
```

## Purpose
Sets the network proxy host and port in the live runtime configuration.

This is the legacy `vuMail` function name for `vuNetSetProxy()`.

Preferred function name:

- [vuNetSetProxy()](vuNetSetProxy.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| ProxyHost | *CSTRING | Proxy server name or address. |
| ProxyPort | LONG | Proxy port number. |

## Return value
- `1` = proxy settings accepted.
- `0` = the call was rejected.

## Notes
- This affects the current process only until the settings are saved.
- Use this in manual or troubleshooting scenarios where the application must route mail traffic through a proxy.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
