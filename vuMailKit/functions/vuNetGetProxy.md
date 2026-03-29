---
title: "vuNetGetProxy"
summary: "Gets proxy server name and port from vuMailKit runtime globals."
description: "Gets proxy server name and port from vuMailKit runtime globals. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vunetgetproxy", "vugetmailproxy"]
function_name: "vuNetGetProxy"
category: "Network"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuNetGetProxy()

```Prototype
vuNetGetProxy(*CSTRING OutProxyHost,*LONG OutProxyPort),SIGNED,PROC,PASCAL,RAW,NAME('vuNetGetProxy')
```

## Purpose
Reads current proxy host and proxy port from vuMailKit runtime globals.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| OutProxyHost | *CSTRING | Output buffer receiving proxy host name/IP. |
| OutProxyPort | *LONG | Receives proxy port number. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuNetGetProxy(*CSTRING OutProxyHost,*LONG OutProxyPort),SIGNED,PROC,PASCAL,RAW,NAME('vuNetGetProxy')
  END
END

rc      LONG
server  CSTRING(260)
port    LONG

CLEAR(server)
port = 0
rc = vuNetGetProxy(server, port)
IF rc = 1
  MESSAGE('Proxy=' & server & ':' & port)
ELSE
  MESSAGE('vuNetGetProxy failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuGetMailProxy()](vuGetMailProxy.md).
- Returns runtime memory values; call `vuGlobalsLoad()` first if you need persisted registry values loaded into this process.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)