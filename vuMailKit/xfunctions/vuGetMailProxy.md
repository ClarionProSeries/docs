---
title: "vuGetMailProxy"
summary: "Legacy alias for vuNetGetProxy()."
description: "Legacy vuMail function name. This function is an alias for vuNetGetProxy() and behaves identically. Use vuNetGetProxy() for new development. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vugetmailproxy", "vunetgetproxy"]
function_name: "vuGetMailProxy"
category: "Network"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGetMailProxy()

```Prototype
vuGetMailProxy(*CSTRING, *LONG), LONG
```

## Purpose
Gets the current proxy host and port from the live runtime configuration.

This is the legacy `vuMail` function name for `vuNetGetProxy()`.

Preferred function name:

- [vuNetGetProxy()](vuNetGetProxy.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| ProxyHost | *CSTRING | Receives the proxy host name or address. |
| ProxyPort | *LONG | Receives the proxy port number. |

## Return value
- `1` = proxy values returned.
- `0` = no proxy is currently configured.

## Notes
- This reads the current runtime values only.
- It is useful when troubleshooting environment-specific proxy behavior.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
