[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDelete(FileSpec, Subdirs, RecycleBin)

```Prototype
vuDelete(*CSTRING,LONG,LONG), Signed
```


## Description
Deletes one or more files or directories, with the option to include subdirectories and send items to the Recycle Bin. This function is extremely powerful and must be used with caution.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| FileSpec    | CSTRING(256) | Fully qualified file specification. Wildcards are permitted.                |
| Subdirs     | LONG         | 0 = Do not delete subdirectories <br> 1 = Delete all subdirectories and files when mask is used |
| RecycleBin  | LONG         | 0 = Permanently delete <br> 1 = Send files to Recycle Bin                   |

### Returns
1 (True) on success, 0 (False) on failure.

### Example

```Clarion
! Delete all files and subdirectories in C:\Temp, sending them to the Recycle Bin
FileSpec = 'C:\Temp\*.*'
vuDelete(FileSpec, 1, 1)
```

### Notes
- **Danger!** Misuse can result in catastrophic data loss.  
- Example of destructive call (do **not** use):  
  ```Clarion
  FileSpec = 'C:\*.*'
  vuDelete(FileSpec, 1, 0)  ! Wipes the entire drive
  ```
- Use only with explicit and validated file paths.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
