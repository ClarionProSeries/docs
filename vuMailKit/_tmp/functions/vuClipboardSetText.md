
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuClipboardSetText()

```Prototype
vuClipboardSetText(*CSTRING InText,*CSTRING InFormat,LONG InFlags),SIGNED,PROC,PASCAL,RAW,NAME('vuClipboardSetText')
```

## Purpose
Copies provided text to the Windows clipboard and returns diagnostic text.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InText | *CSTRING | Text to copy to clipboard. |
| InFormat | *CSTRING | Output buffer receiving diagnostic text (`ok` on success). |
| InFlags | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `1`: Success.
- `-7`: Clipboard operation failed; `OutText` contains exception details.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuClipboardSetText(*CSTRING InText,*CSTRING InFormat,LONG InFlags),SIGNED,PROC,PASCAL,RAW,NAME('vuClipboardSetText')
  END
END

rc      LONG
src     CSTRING(256)
outMsg  CSTRING(260)

src = 'Device code: ABCD-EFGH'
outMsg = ''
rc = vuClipboardSetText(src, outMsg, SIZE(outMsg))
IF rc = 1
  MESSAGE('Clipboard updated: ' & outMsg)
ELSE
  MESSAGE('Clipboard failed: rc=' & rc & ' msg=' & outMsg)
END
```

## Notes
- Text longer than 65,535 characters is truncated before clipboard write.
- This function also updates LastError internally (`0` on success, `-7` on failure).
- AuthMode/OAuth is not required, but this helper is commonly used in OAuth device-code UX flows.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)