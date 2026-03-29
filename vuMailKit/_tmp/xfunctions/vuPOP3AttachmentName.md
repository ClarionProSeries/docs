
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3AttachmentName(Index)

```Prototype
vuPOP3AttachmentName(LONG Index), CSTRING
```

## Purpose
Returns the filename for one attachment entry from the currently loaded POP3 message.

This is usually used after `vuPOP3LoadEmail()` when you want to inspect available attachments before saving them.

## Parameters
- `Index` (LONG): 1-based attachment index.

## Return value
- Returns the attachment filename text for that item.
- Returns an empty string if the index is invalid or no attachment name is available.

## Example (Clarion)
```clarion
Index LONG

Index = 1
MESSAGE('Attachment name: ' & vuPOP3AttachmentName(Index))
```

## Notes
- Load the message first with `vuPOP3LoadEmail()`.
- This function uses the original vuMail text-return behavior.
- In Clarion it is declared as returning `CSTRING`, which preserves the legacy usage style in `MESSAGE()` and assignment expressions.
- Newer text-return APIs generally prefer caller-owned `*CSTRING` output buffers.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)