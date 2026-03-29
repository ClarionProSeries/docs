
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3HaveAttachments()

```Prototype
vuPOP3HaveAttachments(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3HaveAttachments')
```

## Purpose
Checks the currently loaded POP3 message and reports whether attachment parts are present.

## Parameters
This function has no parameters.

## Return value / error codes
- `1`: Attachment content is present.
- `0`: No attachment content is present.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3HaveAttachments(),LONG,PROC,PASCAL,RAW,NAME('vuPOP3HaveAttachments')
  END
END

hasAttach LONG

hasAttach = vuPOP3HaveAttachments()
IF hasAttach = 1
  MESSAGE('Attachments found.')
END
```

## Notes
- Load a full message with `vuPOP3LoadEmail` before querying attachment state.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)