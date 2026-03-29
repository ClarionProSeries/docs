
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3HaveAttachments()

```Prototype
vuPOP3HaveAttachments(), LONG
```

## Description
Returns a flag indicating whether the currently loaded POP3 message includes one or more file attachments.

## Return value
- `1` if yes
- `0` if no

## Typical flow
1. Connect to the POP3 mailbox.
2. Load a message header or full message with `vuPOP3LoadHeader()` or `vuPOP3LoadEmail()`.
3. Call this function to decide what to do next.

## Example (Clarion)
```clarion
IF (vuPOP3HaveHTMLText() = 1)
  MESSAGE('This message has HTML text.')
END
```

## Notes
- These functions only describe the message currently loaded into the internal POP3 message buffer.
- If no message has been loaded yet, the result is normally `0`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)