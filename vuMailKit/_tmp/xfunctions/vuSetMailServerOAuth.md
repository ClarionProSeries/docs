
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSetMailServerOAuth()

```Prototype
vuSetMailServerOAuth(*CSTRING, LONG), LONG
```

## Purpose
Stores OAuth-specific SMTP host/port settings in the active runtime configuration.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| xServer | *CSTRING | OAuth SMTP server host name. |
| xPort | LONG | OAuth SMTP server port. |

## Return value / error codes
- `1`: Settings saved in runtime state.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSetMailServerOAuth(*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuSetMailServerOAuth')
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

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)