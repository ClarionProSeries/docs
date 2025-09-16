[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuShellEx(pFile, pParams, pWork, ShowCmd)

```Prototype
vuShellEx(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd), LONG
```


## Description
Launches a file using the Windows shell (e.g., respects file associations) with optional parameters, working directory, and window display options.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Full path to the file or executable to launch.                              |
| pParams   | CSTRING(260) | Optional command-line parameters.                                           |
| pWork     | CSTRING(260) | Optional working directory.                                                 |
| ShowCmd   | LONG         | Window display option (see ShowWindow constants, e.g., 1 = Normal window).  |

_Note: In vuFileTools V5, CSTRINGs are not limited to the sizes shown above. The numbers are for example only._

### Returns
A LONG value indicating the result:

- 1: Launched successfully  
- 0: Failed to launch  

### Example

```Clarion
FilePath   CSTRING(260)
Params     CSTRING(260)
WorkFolder CSTRING(260)
ShowCmd    LONG
Ret        LONG

FilePath   = 'C:\Windows\notepad.exe'
Params     = ''
WorkFolder = ''
ShowCmd    = 1   ! SW_SHOWNORMAL

Ret = vuShellEx(FilePath, Params, WorkFolder, ShowCmd)

MESSAGE('vuShellEx returned: ' & FORMAT(Ret), 'vuShellEx Test')

```
Notes

Uses the Windows shell, so file associations (e.g., .txt with Notepad) are honored.

Typical ShowCmd values: 1 (normal), 3 (maximized), 7 (minimized no activate), 4/8 (show without activating).

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
