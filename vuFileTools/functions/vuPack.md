[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPack(FileMask, FileName)

```Prototype
vuPack(*CSTRING,*CSTRING), Signed
```


## Description
Takes all files matching the specified file mask and combines them into a single file.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| FileMask  | CSTRING(256) | File mask with optional wildcards to select which files to pack (e.g. `C:\test\*.tps`). |
| FileName  | CSTRING(256) | Name and path of the destination file to pack the selected files into.      |

### Returns
A LONG value containing the number of files successfully packed.

### Example

```Clarion
FileMask = 'C:\Valutilities\*.tps'
FileName = 'C:\transport\PackedTPS.val'

PackedCount = vuPack(FileMask, FileName)
MESSAGE(CLIP(PACKEDCOUNT) & ' files packed into ' & FileName)
```

### Notes
- Wildcards are supported in `FileMask` for selecting multiple files.  
- Packed files are appended into the target file in sequence.  
- Use `vuCompress()` after packing to compress or optionally encrypt the packed file.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
