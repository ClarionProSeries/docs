
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuNetSetProxy()

```Prototype
vuNetSetProxy(*CSTRING InProxyHost,LONG InProxyPort),SIGNED,PROC,PASCAL,RAW,NAME('vuNetSetProxy')
```

## Purpose
Sets the proxy host and proxy port used by vuMailKit network operations.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InProxyHost | *CSTRING | Proxy server host name or IP. |
| InProxyPort | LONG | Proxy server port number. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuNetSetProxy(*CSTRING InProxyHost,LONG InProxyPort),SIGNED,PROC,PASCAL,RAW,NAME('vuNetSetProxy')
  END
END

rc      LONG
server  CSTRING(260)
port    LONG

server = 'proxy.example.com'
port = 8080
rc = vuNetSetProxy(server, port)
IF rc <> 1
  MESSAGE('vuNetSetProxy failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuSetMailProxy()](vuSetMailProxy.md).
- This updates runtime memory only; call `vuGlobalsSave()` to persist to registry.
- AuthMode/OAuth is not set by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)