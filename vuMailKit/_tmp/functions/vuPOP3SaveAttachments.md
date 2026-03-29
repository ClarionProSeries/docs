
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SaveAttachments()

```Prototype
vuPOP3SaveAttachments(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3SaveAttachments')
```

## Purpose
Saves all attachment parts from the currently loaded POP3 message.

## Parameters
This function has no parameters.

## Return value / error codes
- `1`: One or more attachments were saved.
- `0`: No attachments were saved or save operation failed.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveAttachments(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3SaveAttachments')
  END
END

rc LONG

rc = vuPOP3SaveAttachments()
IF rc = 0
  MESSAGE('No attachments saved.')
END
```

## Notes
- Call `vuPOP3LoadEmail` before saving attachments.
- Output folder comes from `vuPOP3SetFolder` / POP3 folder configuration.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)