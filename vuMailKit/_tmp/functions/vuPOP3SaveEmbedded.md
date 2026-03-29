
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SaveEmbedded()

```Prototype
vuPOP3SaveEmbedded(*CSTRING InFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SaveEmbedded')
```

## Purpose
Saves one embedded (inline) content item from the currently loaded POP3 message by filename.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFileName | *CSTRING | Embedded part filename/content-id-derived name to save. |

## Return value / error codes
- `1`: Embedded content item saved successfully.
- `0`: `FileName` is blank, embedded item not found, or save failed.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveEmbedded(*CSTRING InFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SaveEmbedded')
  END
END

rc       LONG
fileName CSTRING(260)

fileName = 'logo.png'
rc = vuPOP3SaveEmbedded(fileName)
IF rc = 0
  MESSAGE('Embedded content save failed.')
END
```

## Notes
- Call `vuPOP3LoadEmail` before saving embedded content.
- Output folder comes from `vuPOP3SetFolder` / POP3 folder configuration.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)