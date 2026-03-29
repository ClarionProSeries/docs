
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SaveAttachments()

```Prototype
vuPOP3SaveAttachments(), LONG
```

## Purpose
Saves all attachment parts from the currently loaded POP3 message into the configured POP3 folder.

Use this when you want a bulk save of every regular attachment in the message rather than picking files one at a time.

## Parameters
This function has no parameters.

## Return value / error codes
- `1`: One or more attachments were saved.
- `0`: No attachments were saved, no message is loaded, or the save operation failed.

## Typical flow
- connect to POP3
- call `vuPOP3LoadEmail()` for the message you want
- optionally check `vuPOP3HaveAttachments()`
- call `vuPOP3SaveAttachments()` to write all attachments to disk

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveAttachments(),LONG,PASCAL,RAW,NAME('vuPOP3SaveAttachments')
  END
END

rc LONG

rc = vuPOP3SaveAttachments()
IF rc = 0
  MESSAGE('No attachments saved.')
END
```

## Notes
- Call `vuPOP3LoadEmail()` before saving attachments.
- Output folder comes from the POP3 folder setting.
- Embedded inline content is separate. Use the embedded-save functions for that content.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)