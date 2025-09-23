---
title: "vuWindow2Clipboard"
summary: "Saves a copy of the current active window to the clipboard."
description: "Saves a copy of the current active window to the clipboard. ### Parameters
This function takes no parameters. ### Returns
A BYTE value:  
- `True` if the active window was successfully copied to the clipboard.  
- `False` if the operation failed. ### Example ### Notes
- Captures only the current active window, not the entire desktop.  
- The captured window image is placed in the clipboard as a bitmap and can be pasted into applications that accept images (for example, Paint or Word). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuwindow", "vuFileTools", "management", "clipboard", "active", "window", "Clarion", "copy", "saves", "Windows"]
function_name: "vuWindow2Clipboard"
category: "Window Management"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindow2Clipboard()

```Prototype
vuWindow2Clipboard(), Signed
```


## Description
Saves a copy of the current active window to the clipboard.

### Parameters
This function takes no parameters.

### Returns
A BYTE value:  
- `True` if the active window was successfully copied to the clipboard.  
- `False` if the operation failed.

### Example

```Clarion
IF vuWindow2Clipboard()
  MESSAGE('Active window copied to clipboard')
ELSE
  MESSAGE('Failed to copy window to clipboard')
END
```

### Notes
- Captures only the current active window, not the entire desktop.  
- The captured window image is placed in the clipboard as a bitmap and can be pasted into applications that accept images (for example, Paint or Word).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
