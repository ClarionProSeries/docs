
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSmtpSetAuthMode()

```Prototype
vuSmtpSetAuthMode(LONG), LONG
```

## Purpose
Sets SMTP auth mode (`0` for password auth, non-zero for OAuth auth).

## Parameters
| Parameter | Type | Description |
|---|---|---|
| xMode | LONG | `0` = password mode, non-zero = OAuth mode. |

## Return value / error codes
- `1`: Mode updated.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpSetAuthMode(LONG),LONG,PASCAL,RAW,NAME('vuSmtpSetAuthMode')
  END
END

rc LONG
rc = vuSmtpSetAuthMode(1)   ! switch to OAuth mode
MESSAGE('vuSmtpSetAuthMode rc=' & rc)
```

## Notes
- This setting is written into runtime globals and may be persisted by the library.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)