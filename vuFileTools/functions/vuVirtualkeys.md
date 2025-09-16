[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuVirtualKeys(CharString)

```Prototype
vuVirtualkeys(*CSTRING), Pascal
```


## Description
Sends keystrokes contained in `CharString` to the window or control that currently has keyboard focus. Works like Clarion's `PRESS` function but allows sending multiple characters in sequence.

### Parameters

| Parameter  | Data Type    | Description                                                                 |
|------------|--------------|-----------------------------------------------------------------------------|
| CharString | CSTRING(256) | The string of characters to send as simulated keystrokes.                   |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
None.

### Example

```Clarion
MyStrg = 'Now is the time'
vuVirtualKeys(MyStrg)
```

This will send the text `"Now is the time"` one character at a time, as if typed manually, to the control that currently has keyboard focus.

### Notes
- The target is always the active window or control with focus at the time the function is called.  
- Useful for automation tasks or simulating user input.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
