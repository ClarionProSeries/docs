[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCompress(SourceFile, TargetFile)

```Prototype
vuCompress(*CSTRING,*CSTRING), Signed
```


## Description
Compresses a source file using the Huffman compression algorithm and saves it as the specified target file. The source file remains unchanged.

### Parameters

| Parameter  | Data Type    | Description                                                                 |
|------------|--------------|-----------------------------------------------------------------------------|
| SourceFile | CSTRING(256) | Fully qualified path and filename of the source file                        |
| TargetFile | CSTRING(256) | Fully qualified path and filename for the compressed file (any name/extension) |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
Source = 'C:\Valutilities\Test.tps'
Target = 'C:\Valutilities\Test.arc'

IF vuCompress(Source, Target) = 1
  MESSAGE('Success')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
