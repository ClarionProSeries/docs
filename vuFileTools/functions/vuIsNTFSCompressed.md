[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuIsNTFSCompressed(pPath)

```Prototype
vuIsNTFSCompressed(*CSTRING), LONG
```


## Description
Checks whether the specified file or folder is NTFS-compressed. Works with both individual files and directories.

### Parameters

| Parameter | Data Type    | Description                                      |
|-----------|--------------|--------------------------------------------------|
| pPath     | CSTRING(260) | Full path to the file or folder to check.       |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 = The file or folder is NTFS-compressed  
- 0 = The file or folder is not compressed  
- <0 = Error occurred

### Example

```Clarion
Path CSTRING(260)
Rc   LONG

Path = 'C:\Testing\CompressedFolder'
Rc   = vuIsNTFSCompressed(Path)

IF Rc = 1
  MESSAGE('The folder is NTFS compressed.')
ELSIF Rc = 0
  MESSAGE('The folder is NOT NTFS compressed.')
ELSE
  MESSAGE('Error checking compression: ' & CLIP(Path))
END

```
Notes

Supports both files and folders.

The path must exist or the function will return an error code.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
