
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuShellOpenUrl()

```Prototype
vuShellOpenUrl(*CSTRING, *CSTRING, LONG), LONG
```

## Purpose
Attempts to launch a URL in the user’s default browser and writes diagnostic text to an output buffer.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| xUrl | *CSTRING | URL to open. |
| xOutText | *CSTRING | Output buffer for success/failure diagnostics. |
| xOutTextLen | LONG | Size of `xOutText` in bytes. |

## Return value / error codes
- `1`: Launch request accepted.
- `-8`: Launch failed (details written to output text and LastError).

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuShellOpenUrl(*CSTRING,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuShellOpenUrl')
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

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)