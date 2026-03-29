
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailServerOAuth()

```Prototype
vuSetMailServerOAuth(*CSTRING InServer,LONG InPort),SIGNED,PROC,PASCAL,RAW,NAME('vuSetMailServerOAuth')
```

## Purpose
Stores OAuth-specific SMTP host/port settings in the active runtime configuration.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InServer | *CSTRING | OAuth SMTP server host name. |
| InPort | LONG | OAuth SMTP server port. |

## Return value / error codes
- `1`: Settings saved in runtime state.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSetMailServerOAuth(*CSTRING InServer,LONG InPort),SIGNED,PROC,PASCAL,RAW,NAME('vuSetMailServerOAuth')
  END
END

rc      LONG
server  CSTRING(256)
port    LONG

server = 'smtp.office365.com'
port = 587
rc = vuSetMailServerOAuth(server, port)
MESSAGE('vuSetMailServerOAuth rc=' & rc)
```

## Notes
- The function attempts to persist configuration via globals save; return value remains `1`.
- Use with OAuth auth mode (`vuSmtpSetAuthMode(1)`) when routing SMTP sends through OAuth settings.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)