---
title: "vuWindowHandle"
summary: "Returns the handle of the first window whose title contains the specified name."
description: "Returns the handle of the first window whose title contains the specified name. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
A LONG value containing the handle of the first window whose title contains `WinName`. Returns 0 if no matching window is found. ### Example ### Notes
- Matches the first window whose title contains the given string.  
- Useful for checking if a program is running by searching for its main window title.  
- Combine with other functions like `vuWindow2BmpEx` to capture or manipulate the found window. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["contains", "vuFileTools", "whose", "specified", "vuwindowhandle", "management", "handle", "first", "title", "returns", "window", "Clarion"]
function_name: "vuWindowHandle"
category: "Window Management"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindowHandle(WinName)

```Prototype
vuWindowHandle(*CSTRING), Long
```


## Description
Returns the handle of the first window whose title contains the specified name.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| WinName   | CSTRING(128) | Name (or partial name) of the running window to retrieve the handle for.    |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value containing the handle of the first window whose title contains `WinName`. Returns 0 if no matching window is found.

### Example

```Clarion
WinName = 'Microsoft'
hWindow = vuWindowHandle(WinName)

IF hWindow
  MESSAGE('Found window handle for "' & WinName & '": ' & hWindow)
ELSE
  MESSAGE('No window found containing "' & WinName & '"')
END
```

### Notes
- Matches the first window whose title contains the given string.  
- Useful for checking if a program is running by searching for its main window title.  
- Combine with other functions like `vuWindow2BmpEx` to capture or manipulate the found window.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
