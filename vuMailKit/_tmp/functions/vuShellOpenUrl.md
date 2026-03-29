
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuShellOpenUrl()

```Prototype
vuShellOpenUrl(*CSTRING Url,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuShellOpenUrl')
```

## Purpose
Attempts to launch a URL in the user’s default browser and writes diagnostic text to an output buffer.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Url | *CSTRING | URL to open. |
| OutText | *CSTRING | Output buffer for success/failure diagnostics. |
| OutTextLen | LONG | Size of `xOutText` in bytes. |

## Return value / error codes
- `1`: Launch request accepted.
- `-8`: Launch failed (details written to output text and LastError).

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuShellOpenUrl(*CSTRING Url,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuShellOpenUrl')
  END
END

rc      LONG
url     CSTRING(512)
outTxt  CSTRING(512)

url = 'https://login.microsoftonline.com/'
outTxt = ''
rc = vuShellOpenUrl(url, outTxt, SIZE(outTxt))

IF rc = 1
  MESSAGE('Browser launch requested. ' & outTxt)
ELSE
  MESSAGE('Launch failed. rc=' & rc & ' msg=' & outTxt)
END
```

## Notes
- URL input is sanitized and capped before launch attempts.
- This helper is frequently used by OAuth login flows that need interactive browser verification.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)