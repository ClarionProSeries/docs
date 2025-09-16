[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuSystemDirectory()

```Prototype
vuSystemDirectory(), CSTRING
```


## Description
Returns the path to the Windows System Directory.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the fully qualified path to the Windows System Directory.

### Example

```Clarion
MESSAGE('The system directory = ' & vuSystemDirectory())
```

### Notes
- The path returned typically looks like `C:\Windows\System32`.  
- Useful for locating system files or ensuring compatibility with system-level operations.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
