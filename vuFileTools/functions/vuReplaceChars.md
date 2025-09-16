[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuReplaceChars(MainStrg, OldStrg, NewStrg)

```Prototype
vuReplaceChars(*CSTRING, *CSTRING, *CSTRING), Long
```


## Description
Returns a modified version of `MainStrg` with all occurrences of `OldStrg` replaced by `NewStrg`. The replacement substring does not need to be the same length as the original.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| MainStrg  | CSTRING(256) | The input string to modify.                                                 |
| OldStrg   | CSTRING(128) | The substring you wish to replace.                                          |
| NewStrg   | CSTRING(128) | The substring to replace `OldStrg` with.                                    |

### Returns
A CSTRING containing the modified version of `MainStrg`.

### Example

```Clarion
MainStrg = 'Microsoft Windows XP is no longer supported.'
OldStrg  = 'Windows XP'
NewStrg  = 'Windows Vista'

Result = vuReplaceChars(MainStrg, OldStrg, NewStrg)

MESSAGE(Result)
! Result: 'Microsoft Windows Vista is no longer supported.'
```

### Notes
- All occurrences of `OldStrg` within `MainStrg` are replaced.  
- `NewStrg` may be shorter or longer than `OldStrg`.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
