
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3Disconnect()

## Clarion prototype

**Prototype:** vuPOP3Disconnect(), LONG, PROC, PASCAL, RAW, NAME('vuPOP3Disconnect')

## Purpose
Disconnects the current POP3 session.

## Parameters
This function has no parameters.

## Return value / error codes
| Value | Meaning |
|---|---|
| 0 | Disconnected successfully (or no active connection). |
- `< 0`: Disconnect error.

## Example (Clarion)
```clarion
rc LONG

rc = vuPOP3Disconnect()
```

## Notes
- Safe to call in cleanup code after POP3 operations.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)