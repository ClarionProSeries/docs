[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCreateHardLink(LinkPath, TargetFile)

```Prototype
vuCreateHardLink(*CSTRING,*CSTRING), LONG
```


## Description
Creates a hard link to an existing file. A hard link allows two filenames to reference the same physical file data on disk.

### Parameters

| Parameter  | Data Type    | Description                                                  |
|------------|--------------|--------------------------------------------------------------|
| LinkPath   | CSTRING(260) | Full path of the new hard link to create.                    |
| TargetFile | CSTRING(260) | Full path of the existing file that the link will reference. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: Success  
- 0: Failure (generic)  
- -5: Access denied  
- -6: Invalid arguments  
- -7: Target file not found  

### Example

```Clarion
base       CSTRING(260)
linkPath   CSTRING(260)
targetFile CSTRING(260)
rc         LONG
msg        CSTRING(256)

base       = 'C:\_Temp\vuFT5\'
linkPath   = base & 'LinkTests\cln_sample_hardlink.txt'
targetFile = base & 'LinkTests\sample.txt'

rc = vuCreateHardLink(linkPath, targetFile)

CASE rc
OF 1      ; msg = 'Hard link created successfully: ' & linkPath
OF -5     ; msg = 'Access denied while creating hard link.'
OF -6     ; msg = 'Invalid arguments passed to vuCreateHardLink.'
OF -7     ; msg = 'Target file not found: ' & targetFile
ELSE        msg = 'Hard link failed. rc=' & FORMAT(rc)
END

MESSAGE(msg, 'vuCreateHardLink Test')

```
Notes

The target file must already exist.

The parent folder of LinkPath must exist or the call will fail.

Requires NTFS file system.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
