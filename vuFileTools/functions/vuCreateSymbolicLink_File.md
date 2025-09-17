[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCreateSymbolicLink_File(LinkPath, TargetFile, AllowUnpriv)

```Prototype
vuCreateSymbolicLink_File(*CSTRING,*CSTRING,LONG), LONG
```


## Description
Creates a symbolic link (symlink) to an existing file. A symlink acts as a shortcut at the file system level, allowing another path to point to the target file.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| LinkPath    | CSTRING(260) | Full path of the symbolic link to create.                                   |
| TargetFile  | CSTRING(260) | Full path of the existing file the symbolic link will point to.             |
| AllowUnpriv | LONG         | Set to 1 to allow unprivileged creation (requires Windows Developer Mode).  |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: Success  
- 0: Failure (generic)  
- -5: Access denied  
- -6: Invalid arguments  
- -7: Target file not found  
- -9: Privilege not held (requires elevation or Developer Mode)  

### Example

```Clarion
base       CSTRING(260)
linkPath   CSTRING(260)
targetFile CSTRING(260)
allowUnpriv LONG
rc         LONG
msg        CSTRING(256)

base       = 'C:\_Temp\vuFT5\'
linkPath   = base & 'LinkTests\cln_sample_symlink.txt'
targetFile = base & 'LinkTests\sample.txt'
allowUnpriv = 1

rc = vuCreateSymbolicLink_File(linkPath, targetFile, allowUnpriv)

CASE rc
OF 1      ; msg = 'File symbolic link created successfully: ' & linkPath
OF -5     ; msg = 'Access denied while creating file symlink.'
OF -7     ; msg = 'Target file not found: ' & targetFile
OF -9     ; msg = 'Privilege not held. Run as Admin or enable Developer Mode.'
ELSE        msg = 'File symlink failed. rc=' & FORMAT(rc)
END

MESSAGE(msg, 'vuCreateSymbolicLink_File Test')

```
Notes

The target file must already exist.

Symlink creation normally requires elevation (Administrator rights).

On Windows 10 and later, Developer Mode allows unprivileged symlink creation when AllowUnpriv is set to 1.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
