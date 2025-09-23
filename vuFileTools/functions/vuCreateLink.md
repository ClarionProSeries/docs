---
title: "vuCreateLink"
summary: "Creates a Windows shortcut (link) file."
description: "Creates a Windows shortcut (link) file. Shortcuts allow programs to be started from locations such as the desktop, start menu, or other system folders. `vuCreateLink` supports eight default locations. ### Parameters ### Returns
1 (True) on success, 0 (False) on failure. ### Example ### Notes
- The working directory is derived from the program file path.  
- Once created, shortcuts can be copied anywhere.  
- The **Send To** option (Location = 6) is useful for programs that take data files as parameters. After creating the link, right-click a file in Explorer, choose **Send To**, and drop it onto the shortcut to launch your program with that file as input. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "creates", "shortcut", "general", "link", "vucreatelink", "Clarion", "Windows", "file"]
function_name: "vuCreateLink"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCreateLink(Location, LinkName, ProgramName, Arguments)

```Prototype
vuCreateLink(LONG,*CSTRING,*CSTRING,*CSTRING), Signed
```


## Description
Creates a Windows shortcut (link) file. Shortcuts allow programs to be started from locations such as the desktop, start menu, or other system folders. `vuCreateLink` supports eight default locations.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| Location    | LONG         | Shortcut location: <br> 1 = Desktop <br> 2 = Start Menu <br> 3 = Startup Folder <br> 4 = Favorites Folder <br> 5 = Personal Folder <br> 6 = SendTo Options <br> 7 = Start Menu\Programs Folder <br> 8 = Start Menu\Programs\Administrative Tools |
| LinkName    | CSTRING(64)  | The display name under the shortcut icon                                    |
| ProgramName | CSTRING(256) | Fully qualified path and filename of the program to link                    |
| Arguments   | CSTRING(128) | Optional runtime parameters                                                 |

### Returns
1 (True) on success, 0 (False) on failure.

### Example
```Clarion
! Example: Create a desktop shortcut
IF vuCreateLink(1, 'MyApp', 'C:\Apps\MyApp.exe', '') = 1
  MESSAGE('Shortcut created on desktop')
END
```

### Notes
- The working directory is derived from the program file path.  
- Once created, shortcuts can be copied anywhere.  
- The **Send To** option (Location = 6) is useful for programs that take data files as parameters. After creating the link, right-click a file in Explorer, choose **Send To**, and drop it onto the shortcut to launch your program with that file as input.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
