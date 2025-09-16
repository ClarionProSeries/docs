[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuScreen2Bmp(FileName)

```Prototype
vuScreen2Bmp(*CSTRING), Signed
```


## Description
Captures the current Windows desktop and saves it as a bitmap file.

### Parameters

| Parameter | Data Type    | Description                                                       |
|-----------|--------------|-------------------------------------------------------------------|
| FileName  | CSTRING(256) | Fully qualified filename for the bitmap file (must include `.bmp` extension). |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
FileName = 'C:\Temp\Screen1.bmp'

IF vuScreen2Bmp(FileName)
  MESSAGE('Screen captured to ' & FileName)
ELSE
  MESSAGE('Failed to capture screen.')
END
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
