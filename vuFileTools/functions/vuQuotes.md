[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuQuotes(Strg)

```Prototype
vuQuotes(*CSTRING), CSTRING
```


## Description
Returns the specified string with leading and trailing quotation marks added.

### Parameters

| Parameter | Data Type | Description                                |
|-----------|-----------|--------------------------------------------|
| Strg      | CSTRING   | The string you want to enclose in quotes.  |

### Returns
A CSTRING containing the input string wrapped in quotation marks.

### Example

```Clarion
Strg = 'Mary had a little lamb.'
QuotedStr = vuQuotes(Strg)
MESSAGE(QuotedStr)
! Result: "Mary had a little lamb."
```

### Notes
- Always adds one leading and one trailing double-quote character.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
