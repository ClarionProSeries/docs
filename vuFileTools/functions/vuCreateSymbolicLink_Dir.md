[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCreateSymbolicLink_Dir(LinkPath, TargetDir, AllowUnpriv)

```Prototype
vuCreateSymbolicLink_Dir(*CSTRING,*CSTRING,LONG), LONG
```


## Description
Creates a symbolic link (symlink) to an existing directory. A symlink acts as a shortcut at the file system level, allowing another folder path to point to the target directory.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| LinkPath    | CSTRING(260) | Full path of the symbolic link (new directory link to create).              |
| TargetDir   | CSTRING(260) | Full path of the existing directory the symbolic link will point to.        |
| AllowUnpriv | LONG         | Set to 1 to allow unprivileged creation (requires Windows Developer Mode).  |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: Success  
- 0: Failure (generic)  
- -5: Access denied  
- -6: Invalid arguments  
- -7: Target directory not found  
- -9: Privilege not held (requires elevation or Developer Mode)  

### Example

```Clarion
base       CSTRING(260)
linkPath   CSTRING(260)
targetDir  CSTRING(260)
allowUnpriv LONG
rc         LONG
msg        CSTRING(256)

base        = 'C:\_Temp\vuFT5\'
linkPath    = base & 'LinkTests_symlink_dir'
targetDir   = base & 'LinkTests'
allowUnpriv = 1

rc = vuCreateSymbolicLink_Dir(linkPath, targetDir, allowUnpriv)

CASE rc
OF 1      ; msg = 'Directory symbolic link created successfully: ' & linkPath
OF -5     ; msg = 'Access denied while creating directory symlink.'
OF -7     ; msg = 'Target directory not found: ' & targetDir
OF -9     ; msg = 'Privilege not held. Run as Admin or enable Developer Mode.'
ELSE        msg = 'Directory symlink failed. rc=' & FORMAT(rc)
END

MESSAGE(msg, 'vuCreateSymbolicLink_Dir Test')

```
Notes

The target directory must already exist.

Symlink creation normally requires elevation (Administrator rights).

On Windows 10 and later, Developer Mode allows unprivileged symlink creation when AllowUnpriv is set to 1.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
