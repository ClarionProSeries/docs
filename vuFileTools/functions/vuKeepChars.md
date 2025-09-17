[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuKeepChars(Strg, Chars)

```Prototype
vuKeepChars(*CSTRING,*CSTRING), CSTRING
```


## Description
Returns a modified version of `Strg` containing only those characters found in `Chars`. Useful for extracting digits or identifiers from strings with mixed content.

### Parameters

| Parameter | Data Type | Description                                                   |
|-----------|-----------|---------------------------------------------------------------|
| Strg      | CSTRING   | Source string to filter                                       |
| Chars     | CSTRING   | Characters to keep (all others will be removed from `Strg`)   |

### Returns
A CSTRING containing only the characters from `Strg` that match those listed in `Chars`.

### Example

```Clarion
Strg  = 'Now is the 3time 2 for al8l good men4 to co5me to th76e aid of their country.'
Chars = '0123456789'

MESSAGE('Digits only: ' & vuKeepChars(Strg, Chars))   ! Returns '3284576'
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
