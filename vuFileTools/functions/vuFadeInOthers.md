[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFadeInOthers(wName)

```Prototype
vuFadeInOthers(*CSTRING), Signed
```


## Description
Fades in other windows whose title contains the specified name or phrase. If `wName` is left blank, all other running windows are affected. Useful for restoring windows after using `vuFadeOutOthers`.

### Parameters

| Parameter | Data Type     | Description                                                                 |
|-----------|---------------|-----------------------------------------------------------------------------|
| wName     | CSTRING(128)  | Name or phrase contained in the title of a running window. Case-insensitive. If blank, all other windows are affected. |

### Returns
The number of windows that were faded in.

### Example

```Clarion
wName = 'Microsoft Word'
vuFadeInOthers(wName)   ! Fades in all open Word documents

! To fade in all windows
vuFadeInOthers('')
```

### Notes
- Requires Windows 2000 or higher.  
- A window may flash the first time this function is called, but subsequent calls (or other transparency functions) will not.  
- Matching is case-insensitive and looks for the substring anywhere in the window title.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
