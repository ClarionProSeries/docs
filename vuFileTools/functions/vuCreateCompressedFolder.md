[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCreateCompressedFolder(zPath)

```Prototype
vuCreateCompressedFolder(STRING), LONG
```


## Description
Creates a new folder at the specified path and enables NTFS compression on it.  
This is a convenient way to both create and compress a folder in one operation.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| zPath     | STRING    | Full path of the folder to create and compress (for example, `C:\Testing\NewCompressedFolder`). |

### Returns
- 1 if the folder was successfully created and compressed.  
- 0 if the operation failed.  
- Negative values may indicate errors such as invalid arguments or access denied.

### Example

```Clarion
zPath  CSTRING(256)
Result LONG
Msg    CSTRING(256)

  CODE
  zPath = 'C:\Testing\NewCompressedFolder'

  Result = vuCreateCompressedFolder(zPath)

  IF Result
    Msg = 'Successfully created and compressed folder:' & '<13,10>' & zPath
  ELSE
    Msg = 'Failed to create or compress folder:' & '<13,10>' & zPath
  END

  MESSAGE(Msg, 'Folder Creation Result')

```
Notes

The parent directory must exist before calling this function.

Works only on NTFS volumes.

Use vuIsFolderCompressed to verify compression or vuSetFolderCompression to toggle compression state.


ChatGPT

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
