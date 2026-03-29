
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3EmbeddedName(Index)

```Prototype
vuPOP3EmbeddedName(LONG Index), CSTRING
```

## Purpose
Returns the name associated with one embedded inline content item from the currently loaded POP3 message.

This is commonly used when you want to inspect or save embedded images or other inline parts by name.

## Parameters
- `Index` (LONG): 1-based embedded item index.

## Return value
- Returns the embedded item name text for the selected item.
- Returns an empty string if the index is invalid or no name is available.

## Example (Clarion)
```clarion
Index LONG

Index = 1
MESSAGE('Embedded name: ' & vuPOP3EmbeddedName(Index))
```

## Notes
- Load the message first with `vuPOP3LoadEmail()`.
- This function uses the original vuMail text-return behavior.
- In Clarion it is declared as returning `CSTRING` to preserve legacy usage.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)