[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuAddStartupShortcut(Target, Params, WorkDir, ShowCmd, LinkName, Scope)

```Prototype
vuAddStartupShortcut(*CSTRING,*CSTRING,*CSTRING,LONG,*CSTRING,LONG), LONG
```


## Description
Creates a shortcut (.lnk file) in the Windows Startup folder so that the specified program runs automatically when Windows starts.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| Target    | CSTRING(1024)| Full path to the executable file to run at startup.                         |
| Params    | CSTRING(1024)| Optional command-line parameters for the executable.                        |
| WorkDir   | CSTRING(1024)| Working directory for the executable.                                       |
| ShowCmd   | LONG         | Window display option (see ShowWindow constants such as 1 = Normal).        |
| LinkName  | CSTRING(260) | Name of the shortcut file (e.g., `MyApp.lnk`).                              |
| Scope     | LONG         | `0` = Current User Startup, `1` = Common (All Users) Startup.               |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._

### Returns
A LONG value indicating the result:

- 1: Success  
- 0: Failed  
- -5: Access denied (not elevated)  
- -6: Invalid arguments  
- -7: Startup folder not found  
- -8: COM or save failure  

### Example

```Clarion
Target    CSTRING(1024)
Params    CSTRING(1024)
WorkDir   CSTRING(1024)
LinkName  CSTRING(260)
ShowCmd   LONG
Scope     LONG
Rc        LONG

Target   = 'C:\Windows\System32\notepad.exe'
Params   = ''
WorkDir  = 'C:\Windows'
LinkName = 'CL_Test_Notepad'
ShowCmd  = 1  ! SW_SHOWNORMAL

Scope = 0  ! User Startup
Rc = vuAddStartupShortcut(Target, Params, WorkDir, ShowCmd, LinkName, Scope)

IF Rc = 1
  MESSAGE('Startup shortcut added successfully (User Startup).')
ELSE
  MESSAGE('Failed to add startup shortcut. rc=' & FORMAT(Rc))
END

```
Notes

The shortcut name should include .lnk if you want a specific extension; otherwise it will be added automatically.

Common Startup (Scope = 1) usually requires elevation (Administrator rights).

Useful for registering applications to run automatically when Windows starts.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
