
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpGetServer()

## Description
Gets the outbound SMTP server name and port. (legacy name: `vuGetMailServer()`).

Previously exported as (legacy name, still supported):

- [vuGetMailServer()](vuGetMailServer.md)

### Parameters

- `xServer` (CSTRING) - Receives the SMTP server host name.
- `xPort` (LONG) - Receives the SMTP server port.

### Returns

A LONG value indicating the result.

- 1: Success (this function always returns 1)

### Notes

Values are read from the current vuMailKit session. Call `vuGlobalsLoad()` first if you want values loaded from the registry.

### Example (Clarion)

````clarion
ROUTINE:Test_vuSmtpGetServer   ROUTINE
  DATA
cServer   CSTRING(256)
ThePort   LONG
RC        LONG

  CODE
  cServer = ''
  ThePort = 0
  RC = vuSmtpGetServer(cServer, ThePort)
  STOP('RC=' & RC & '  Server=' & cServer & '  Port=' & ThePort)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)