[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuIsFolderCompressed(zPath)

```Prototype
vuIsFolderCompressed(STRING), LONG
```


## Description
Checks whether a specified folder is NTFS-compressed.  
This allows applications to detect whether compression is applied at the folder level.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| zPath     | STRING       | Full path to the folder to check (for example, `C:\Testing\MyFolder`).      |

### Returns
- 1 if the folder is NTFS compressed.  
- 0 if the folder is not compressed.  
- Negative values may indicate errors such as invalid arguments or path not found.

### Example

```Clarion
zPath   CSTRING(256)
Result  LONG
Msg     CSTRING(256)

  CODE
  zPath = 'C:\Testing\CompressedFolder'

  Result = vuIsFolderCompressed(zPath)

  IF Result
    Msg = 'The folder is NTFS compressed.'
  ELSE
    Msg = 'The folder is NOT NTFS compressed.'
  END

  MESSAGE(Msg, zPath)

```
Notes

Works only on NTFS volumes.

Use vuCreateCompressedFolder or vuSetFolderCompression to enable or change compression.

If the folder path does not exist, the function will return an error.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
