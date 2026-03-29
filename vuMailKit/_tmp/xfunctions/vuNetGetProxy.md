
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuNetGetProxy()

```Prototype
vuNetGetProxy(*CSTRING, *LONG), LONG
```

## Purpose
Reads current proxy host and proxy port from vuMailKit runtime globals.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| ServerName | *CSTRING | Output buffer receiving proxy host name/IP. |
| Port | *LONG | Receives proxy port number. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuNetGetProxy(*CSTRING,*LONG),LONG,PASCAL,RAW,NAME('vuNetGetProxy')
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

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)