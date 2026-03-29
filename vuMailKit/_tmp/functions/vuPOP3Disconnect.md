
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3Disconnect()

```Prototype
vuPOP3Disconnect(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Disconnect')
```

## Purpose
Disconnects the current POP3 session.

## Parameters
This function has no parameters.

## Return value / error codes
- `0`: Disconnected successfully (or no active connection).
- `< 0`: Disconnect error.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3Disconnect(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3Disconnect')
  END
END

rc LONG

rc = vuPOP3Disconnect()
```

## Notes
- Safe to call in cleanup code after POP3 operations.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)