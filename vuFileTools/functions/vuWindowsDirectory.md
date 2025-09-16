[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuWindowsDirectory()

```Prototype
vuWindowsDirectory(), CSTRING
```


## Description
Returns the path of the Windows directory.

### Parameters
This function takes no parameters.

### Returns
A STRING containing the full path of the Windows directory.

### Example

```Clarion
MESSAGE('The Windows directory is ' & vuWindowsDirectory())
```

### Notes
- The return value is the full path to the Windows system directory (for example, `C:\Windows`).  
- Useful for locating system files or ensuring application compatibility with system paths.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
