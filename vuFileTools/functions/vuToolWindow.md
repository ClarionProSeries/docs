[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuToolWindow(hWindow, tFlag)

```Prototype
vuToolWindow(LONG,LONG), Signed
```


## Description
Converts a standard window into a tool window (or reverts it back). Tool windows have a smaller title bar and do not appear on the Windows Taskbar.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| hWindow   | LONG      | The handle of the window to modify.                                         |
| tFlag     | LONG      | Set to 1 to convert to a tool window, set to 0 to revert back to a normal window. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
hWindow = WINDOW{PROP:Handle}  ! Get the handle of the current window
tFlag   = 1

IF vuToolWindow(hWindow, tFlag)
  MESSAGE('Window changed to a Tool Window.')
ELSE
  MESSAGE('Failed to change window.')
END
```

### Notes
- Tool windows use a smaller title bar and do not display on the Taskbar.  
- Use `tFlag = 0` to revert the window back to normal style.  
- The Demo3 application shows an example under the Mailslots tab.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
