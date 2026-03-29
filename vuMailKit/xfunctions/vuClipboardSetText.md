---
title: "vuClipboardSetText"
summary: "Copies text into the Windows clipboard."
description: "Copies text into the Windows clipboard. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vuclipboardsettext", "clipboard"]
function_name: "vuClipboardSetText"
category: "Utilities"
version_added: "Additive"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuClipboardSetText()

```Prototype
vuClipboardSetText(*CSTRING, *CSTRING, LONG), LONG
```

## Purpose
Copies provided text to the Windows clipboard and returns diagnostic text.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| TextValue | *CSTRING | Text to copy to clipboard. |
| OutText | *CSTRING | Output buffer receiving diagnostic text (`ok` on success). |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `1`: Success.
- `-7`: Clipboard operation failed; `OutText` contains exception details.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuClipboardSetText(*CSTRING,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuClipboardSetText')
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

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
