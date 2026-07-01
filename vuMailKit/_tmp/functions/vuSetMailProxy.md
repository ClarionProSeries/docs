
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailProxy()

## Clarion prototype

**Prototype:** vuSetMailProxy(*CSTRING InProxyHost, LONG InProxyPort), SIGNED, PROC, PASCAL, RAW, NAME('vuSetMailProxy')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuNetSetProxy()](vuNetSetProxy.md)

This function is exported for backward compatibility and behaves identically to vuNetSetProxy().

## Example (Clarion)
```clarion
rc        LONG
proxyHost CSTRING(256)

proxyHost = 'proxy.example.com'
rc = vuSetMailProxy(proxyHost, 8080)

IF rc = 0
  MESSAGE('Proxy was not accepted: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)