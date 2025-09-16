[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCreateJunction(JunctionPath, TargetDir)

```Prototype
vuCreateJunction(*CSTRING,*CSTRING), LONG
```


## Description
Creates a junction point that links one directory to another. A junction allows a folder to appear in multiple locations on the file system.

### Parameters

| Parameter    | Data Type    | Description                                                          |
|--------------|--------------|----------------------------------------------------------------------|
| JunctionPath | CSTRING(260) | Full path of the new junction directory to create.                   |
| TargetDir    | CSTRING(260) | Full path of the existing directory that the junction will reference.|

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: Success  
- 0: Failure (generic)  
- -5: Access denied  
- -6: Invalid arguments  
- -7: Target directory not found  
- -8: Junction creation process failure  

### Example

```Clarion
base         CSTRING(260)
junctionPath CSTRING(260)
targetDir    CSTRING(260)
rc           LONG
msg          CSTRING(256)

base         = 'C:\_Temp\vuFT5\'
junctionPath = base & 'LinkTests_junction'
targetDir    = base & 'LinkTests'

rc = vuCreateJunction(junctionPath, targetDir)

CASE rc
OF 1      ; msg = 'Junction created successfully: ' & junctionPath
OF -5     ; msg = 'Access denied while creating junction.'
OF -7     ; msg = 'Target directory not found: ' & targetDir
OF -8     ; msg = 'mklink process failure while creating junction.'
ELSE        msg = 'Junction failed. rc=' & FORMAT(rc)
END

MESSAGE(msg, 'vuCreateJunction Test')

```
Notes

The target directory must already exist.

The parent path of JunctionPath must exist or the call will fail.

Junctions work only with directories and require NTFS file system.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
