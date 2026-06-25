---
title: "vuGetMailProxy"
summary: "Legacy alias for vuNetGetProxy()."
description: "Legacy vuMail function name. This function is an alias for vuNetGetProxy() and behaves identically. Use vuNetGetProxy() for new development."
keywords: ["vuMailKit", "vuMail", "vugetmailproxy", "vunetgetproxy"]
function_name: "vuGetMailProxy"
category: "Network"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailProxy()

## Clarion prototype

**Prototype:** vuGetMailProxy(*CSTRING OutProxyHost, *LONG OutProxyPort), SIGNED, PROC, PASCAL, RAW, NAME('vuGetMailProxy')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuNetGetProxy()](vuNetGetProxy.md)

This function is exported for backward compatibility and behaves identically to `vuNetGetProxy()`.

## Example (Clarion)
```clarion
rc        LONG
proxyHost CSTRING(256)
proxyPort LONG

proxyHost = ''
proxyPort = 0
rc = vuGetMailProxy(proxyHost, proxyPort)

IF rc = 1
  MESSAGE('Proxy=' & CLIP(proxyHost) & '|Port=' & proxyPort)
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
