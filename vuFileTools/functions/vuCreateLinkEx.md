[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCreateLinkEx(Location, WorkingDir, LinkName, ProgramName, Arguments, Comment)

```Prototype
vuCreateLinkEx(LONG,*CSTRING,*CSTRING,*CSTRING,*CSTRING,*CSTRING), Signed
```


## Description
Creates a Windows shortcut (link) file with extended options. This version allows specifying a working directory and a comment in addition to the parameters supported by `vuCreateLink`.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| Location    | LONG         | Shortcut location: <br> 1 = Desktop <br> 2 = Start Menu <br> 3 = Startup Folder <br> 4 = Favorites Folder <br> 5 = Personal Folder <br> 6 = SendTo Options <br> 7 = Start Menu\Programs Folder <br> 8 = Start Menu\Programs\Administrative Tools |
| WorkingDir  | CSTRING(256) | The working directory for the program                                       |
| LinkName    | CSTRING(64)  | The display name under the shortcut icon                                    |
| ProgramName | CSTRING(256) | Fully qualified path and filename of the program to link                    |
| Arguments   | CSTRING(128) | Optional runtime parameters                                                 |
| Comment     | CSTRING(128) | Optional comment (appears in shortcut properties)                           |

### Returns
1 (True) on success, 0 (False) on failure.

### Example
```Clarion
! Example: Create a desktop shortcut with working directory and comment
IF vuCreateLinkEx(1, 'C:\Apps\Data', 'MyApp', 'C:\Apps\MyApp.exe', '', 'My Application Shortcut') = 1
  MESSAGE('Shortcut created on desktop with comment')
END
```

### Notes
- Extends `vuCreateLink()` by adding `WorkingDir` and `Comment` parameters.  
- Otherwise functionally identical to `vuCreateLink`.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
