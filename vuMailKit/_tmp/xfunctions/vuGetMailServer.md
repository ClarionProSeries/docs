
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGetMailServer()

```Prototype
vuGetMailServer(*CSTRING, *LONG), LONG
```

## Purpose
Gets the current SMTP server name and port from the live runtime configuration.

This is the legacy `vuMail` function name for `vuSmtpGetServer()`.

Preferred function name:

- [vuSmtpGetServer()](vuSmtpGetServer.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| ServerName | *CSTRING | Receives the current SMTP server host name. |
| Port | *LONG | Receives the current SMTP port value. |

## Return value
- `1` = values returned successfully.
- `0` = no SMTP server has been set yet.

## Notes
- This reads the current live runtime values.
- Before profiles exist, those values may have come from manual setters or legacy global load behavior.
- After a managed profile exists, those values may have come from the active managed profile.

## Clarion example
```clarion
ServerName   CSTRING(256)
Port         LONG
RC           LONG

CLEAR(ServerName)
Port = 0
RC = vuGetMailServer(ServerName, Port)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)