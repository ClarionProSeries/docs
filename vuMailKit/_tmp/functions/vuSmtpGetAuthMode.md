
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSmtpGetAuthMode()

```Prototype
vuSmtpGetAuthMode(),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpGetAuthMode')
```

## Purpose
Reads the current SMTP authentication mode from runtime globals.

## Return value / error codes
- `0`: Password-based SMTP mode.
- `1`: OAuth SMTP mode.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSmtpGetAuthMode(),SIGNED,PROC,PASCAL,RAW,NAME('vuSmtpGetAuthMode')
  END
END

mode LONG
mode = vuSmtpGetAuthMode()
IF mode = 1
  MESSAGE('SMTP auth mode is OAuth')
ELSE
  MESSAGE('SMTP auth mode is password')
END
```

## Notes
- Pair with `vuSmtpSetAuthMode()` to switch modes.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)