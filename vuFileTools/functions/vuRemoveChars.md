[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRemoveChars(Strg, Chars, AllChars)

```Prototype
vuRemoveChars(*CSTRING,*CSTRING,Long), CSTRING
```


## Description
Returns a modified version of `Strg` with the characters specified in `Chars` removed. Behavior depends on the `AllChars` flag.

### Parameters

| Parameter | Data Type     | Description                                                                 |
|-----------|---------------|-----------------------------------------------------------------------------|
| Strg      | CSTRING(128)  | The input string to modify.                                                 |
| Chars     | CSTRING(128)  | Characters or substring to remove from `Strg`.                             |
| AllChars  | LONG          | If 1, remove all characters present in `Chars`. If 0, treat `Chars` as a literal substring to remove. |

### Returns
A CSTRING containing the modified version of `Strg`.

### Example

```Clarion
Strg     = 'Now is the 3time 2 for al8l good men4 to co5me to th76e aid of their country.'
Chars    = '0123456789'
AllChars = 1

Result = vuRemoveChars(Strg, Chars, AllChars)

MESSAGE(Result)
! Result: 'Now is the time for all good men to come to the aid of their country.'
```

### Notes
- Use `AllChars = 1` when you want to remove every occurrence of any character in `Chars`.  
- Use `AllChars = 0` when you want to remove only the exact substring provided in `Chars`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
