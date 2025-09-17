[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuFadeOutOthers(wName)

```Prototype
vuFadeOutOthers(*CSTRING), Signed
```


## Description
Fades out other windows whose title contains the specified name or phrase. If `wName` is left blank, all other running windows are affected. Useful for highlighting your application by dimming the rest of the desktop environment.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| wName     | CSTRING(256) | Name or phrase contained in the title of a running window. Case-insensitive. If blank, all other windows are affected. |

### Returns
The number of windows that were faded out.

### Example

```Clarion
wName = 'Microsoft Word'
vuFadeOutOthers(wName)   ! Fades out all open Word documents

! Fade out all windows
vuFadeOutOthers('')
```

### Notes
- Requires Windows 2000 or higher.  
- A window may flash the first time this function is called, but subsequent calls (or other transparency functions) will not.  
- Matching is case-insensitive and looks for the substring anywhere in the window title.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
