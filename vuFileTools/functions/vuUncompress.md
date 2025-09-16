[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuUncompress(SourceFile, TargetFile)

```Prototype
vuUncompress(*CSTRING,*CSTRING), Signed
```


## Description
Uncompresses a file created with `vuCompress()` using a fast Huffman-based algorithm (medium compression ratio). The source file remains unchanged.

### Parameters

| Parameter  | Data Type    | Description                                                                 |
|------------|--------------|-----------------------------------------------------------------------------|
| SourceFile | CSTRING(256) | Fully qualified path and filename of the **compressed** input file.         |
| TargetFile | CSTRING(256) | Fully qualified path and filename for the **uncompressed** output file.     |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure

### Example

```Clarion
Source = 'C:\Valutilities\Test.arc'   ! Compressed file created by vuCompress()
Target = 'C:\Valutilities\Test.tps'   ! Destination for the uncompressed data

IF vuUncompress(Source, Target)
  MESSAGE('Success: file uncompressed to ' & Target)
ELSE
  MESSAGE('Uncompress failed.')
END
```

### Notes
- Designed to work with archives created by `vuCompress()`.  
- The source (compressed) file is not modified.  
- Ensure the target path exists and that you have write permissions.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
