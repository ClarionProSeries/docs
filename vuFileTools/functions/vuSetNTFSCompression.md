[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuSetNTFSCompression(pPath, bEnable)

```Prototype
vuSetNTFSCompression(*CSTRING,LONG), LONG
```


## Description
Enables or disables NTFS compression on the specified file or folder.

### Parameters

| Parameter | Data Type    | Description                                                     |
|-----------|--------------|-----------------------------------------------------------------|
| pPath     | CSTRING(260) | Full path to the file or folder to modify.                      |
| bEnable   | LONG         | Compression flag: `1` to enable compression, `0` to disable it. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 = Operation succeeded  
- 0 = Operation failed  

### Example

```Clarion
Path CSTRING(260)
Rc   LONG

Path = 'C:\Testing\ToggleCompression'

! Enable compression
Rc = vuSetNTFSCompression(Path, 1)
IF Rc = 1
  MESSAGE('Compression ENABLED for folder: ' & CLIP(Path))
ELSE
  MESSAGE('Failed to enable compression for folder: ' & CLIP(Path))
END

! Disable compression
Rc = vuSetNTFSCompression(Path, 0)
IF Rc = 1
  MESSAGE('Compression DISABLED for folder: ' & CLIP(Path))
ELSE
  MESSAGE('Failed to disable compression for folder: ' & CLIP(Path))
END

```
Notes

Works with both files and folders.

The file or folder must exist.

Requires NTFS file system.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
