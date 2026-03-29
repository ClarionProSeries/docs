
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3AttachmentName()

```Prototype
vuPOP3AttachmentName(LONG InIndex),CSTRING,PROC,PASCAL,RAW,NAME('vuPOP3AttachmentName')
```

## Description
Gets attachment name text for the selected item using the original vuMail compatibility behavior.

## Parameters
- `Index` (LONG): 1-based item index.

## Return value / error codes
- Returns text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- If no text is available, the result may be empty.

## Example (Clarion)
```clarion
Index LONG

Index = 1
MESSAGE('Attachment name: ' & vuPOP3AttachmentName(Index))
```

## Notes
- Legacy compatibility exception: in the original PowerBasic vuMail code these functions exported a numeric `DWORD` that was actually the address of an internal C string buffer. Clarion can consume that value directly in string expressions, which is why the legacy examples use assignment and `MESSAGE()` style calls because the Clarion prototype is declared as `CSTRING`.
- New text-return APIs should use caller-owned `*CSTRING` output buffers.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)