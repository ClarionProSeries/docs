[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuVolumeLabel(tDir)

```Prototype
vuVolumeLabel(*CSTRING), CSTRING
```


## Description
Returns the volume label of the specified root directory. Supports both mapped drives and UNC paths.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| tDir      | CSTRING(128) | Path to the root directory (for example, `G:\` or `\\MyServer\C\`).         |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A CSTRING containing the volume label of the specified root directory.

### Example

```Clarion
tDir = 'G:\'
Label = vuVolumeLabel(tDir)
MESSAGE('The volume label of ' & tDir & ' is ' & Label)
```

### Notes
- Works with both local drives and network shares.  
- Ensure `tDir` points to a valid root directory.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
