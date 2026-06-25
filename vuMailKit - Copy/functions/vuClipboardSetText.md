---
title: "vuClipboardSetText"
summary: "Copies text into the Windows clipboard."
description: "Copies text into the Windows clipboard. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vuclipboardsettext", "clipboard"]
function_name: "vuClipboardSetText"
category: "Utilities"
version_added: "Additive"
last_updated: "2026-04-19"
---
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuClipboardSetText()

```Prototype
vuClipboardSetText(*CSTRING InText,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuClipboardSetText')
```

## Purpose

Copies text into the Windows clipboard and returns diagnostic text.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InText | *CSTRING | Text to copy to the Windows clipboard. |
| OutText | *CSTRING | Output buffer receiving diagnostic text. |
| OutTextLen | LONG | Size of the OutText buffer in bytes. |

## Return value / error codes

- 1: Success.
- -7: Clipboard operation failed; OutText contains exception details.

## Example (Clarion)

```clarion
MAP
  MODULE('vuMailKit.dll')
    vuClipboardSetText(*CSTRING InText,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuClipboardSetText')
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
- This function also updates LastError internally.
- This helper is commonly used in OAuth device-code UX flows.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
