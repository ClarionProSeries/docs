
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SaveAttachment()

```Prototype
vuPOP3SaveAttachment(*CSTRING InFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SaveAttachment')
```

## Purpose
Saves one attachment from the currently loaded POP3 message by filename.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFileName | *CSTRING | Attachment filename to save from the loaded message. |

## Return value / error codes
- `1`: Attachment saved successfully.
- `0`: `FileName` is blank, attachment name not found, or save failed.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveAttachment(*CSTRING InFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SaveAttachment')
  END
END

rc       LONG
fileName CSTRING(260)

fileName = 'invoice.pdf'
rc = vuPOP3SaveAttachment(fileName)
IF rc = 0
  MESSAGE('Attachment save failed.')
END
```

## Notes
- Call `vuPOP3LoadEmail` before saving attachments.
- Output folder comes from `vuPOP3SetFolder` / POP3 folder configuration.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)