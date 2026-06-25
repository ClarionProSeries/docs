
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpSetAuthMode()

## Clarion prototype

**Prototype:** vuSmtpSetAuthMode(LONG InAuthMode), SIGNED, PROC, PASCAL, RAW, NAME('vuSmtpSetAuthMode')

## Purpose
Sets SMTP auth mode (0 for password auth, non-zero for OAuth auth).

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InAuthMode | LONG | 0 = password mode, non-zero = OAuth mode. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Mode updated. |

## Example (Clarion)
```clarion
rc LONG
rc = vuSmtpSetAuthMode(1)   ! switch to OAuth mode
MESSAGE('vuSmtpSetAuthMode rc=' & rc)
```

## Notes
- This setting is written into runtime globals and may be persisted by the library.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)