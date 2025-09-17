[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetStartupFolder(UserPath, cchUser, CommonPath, cchCommon)

```Prototype
vuGetStartupFolder(*CSTRING,LONG,*CSTRING,LONG), LONG
```


## Description
Retrieves the file system paths for the current users Startup folder and the common (all users) Startup folder.

### Parameters

| Parameter   | Data Type    | Description                                                                |
|-------------|--------------|----------------------------------------------------------------------------|
| UserPath    | CSTRING(*)   | Buffer to receive the path of the current users Startup folder.           |
| cchUser     | LONG         | Size of the UserPath buffer in characters.                                 |
| CommonPath  | CSTRING(*)   | Buffer to receive the path of the common (all users) Startup folder.       |
| cchCommon   | LONG         | Size of the CommonPath buffer in characters.                               |

_Note: In vuFileTools V5, CSTRINGs are not limited to the sizes shown above. The numbers are for example only._

### Returns
A LONG value indicating the result:

- 1: Success  
- 0: Failure  

### Example

```Clarion
UserPath   CSTRING(1024)
CommonPath CSTRING(1024)
Status     LONG
Msg        STRING(2200)

Status = vuGetStartupFolder(UserPath, SIZE(UserPath), CommonPath, SIZE(CommonPath))

Msg = 'vuGetStartupFolder returned: ' & FORMAT(Status) & |
      '<13,10>' & 'User Startup: ' & CLIP(UserPath) & |
      '<13,10>' & 'Common Startup: ' & CLIP(CommonPath)

MESSAGE(Msg, 'Startup Folders')

```
Notes

Both user and common startup folders are returned in one call.

Use with vuAddStartupShortcut and vuRemoveStartupShortcut for complete startup management.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
