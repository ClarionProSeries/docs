
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3EmbeddedCID(Index)

```Prototype
vuPOP3EmbeddedCID(LONG Index), CSTRING
```

## Purpose
Returns the content-id value for one embedded inline part from the currently loaded POP3 message.

This is useful when you need to match inline HTML references such as `cid:` links to the embedded parts stored in the message.

## Parameters
- `Index` (LONG): 1-based embedded item index.

## Return value
- Returns the content-id text for the selected embedded item.
- Returns an empty string if the index is invalid or no content-id is available.

## Example (Clarion)
```clarion
Index LONG

Index = 1
MESSAGE('Embedded CID: ' & vuPOP3EmbeddedCID(Index))
```

## Notes
- Load the message first with `vuPOP3LoadEmail()`.
- This function uses the original vuMail text-return behavior.
- In Clarion it is declared as returning `CSTRING` to preserve the legacy usage style.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)