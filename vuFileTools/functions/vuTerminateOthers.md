[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuTerminateOthers(NameContains)

```Prototype
vuTerminateOthers(*CSTRING), Signed
```


## Description
Terminates all **other** running programs whose primary window title contains the specified string. Can be used to close applications such as Word, Excel, or any program whose window title matches the given criteria.

### Parameters

| Parameter    | Data Type    | Description                                                                 |
|--------------|--------------|-----------------------------------------------------------------------------|
| NameContains | CSTRING(256) | Blank, partial, or full window title to search for.                         |

### Returns
A LONG value containing the number of windows terminated that matched the criteria.

### Example

```Clarion
NameContains = 'Microsoft Word'
MESSAGE(vuTerminateOthers(NameContains) & ' Word documents were terminated')
```

### Notes
- If `NameContains` is blank, all other running programs will be terminated.  
- Match occurs if `NameContains` appears anywhere within the window title.  
- Use with caution, as this can forcibly terminate multiple applications at once.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
