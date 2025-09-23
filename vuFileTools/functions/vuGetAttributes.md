---
title: "vuGetAttributes"
summary: "Returns a bitmask representing the attributes of the specified file."
description: "Returns a bitmask representing the attributes of the specified file. Multiple attributes can be combined. ### Parameters ### Returns
A LONG bitmask containing file attributes:  
- 0 = Normal  
- 1 = Read Only  
- 2 = Hidden  
- 4 = System  
- 32 = Archived   ### Example ### Notes
- Attributes are returned as a combined bitmask. Use `BAND()` to test individual attributes.  
- Example: a return value of 7 indicates System (4) + Hidden (2) + Read Only (1). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "representing", "specified", "attributes", "general", "returns", "vugetattributes", "bitmask", "Clarion", "Windows", "file"]
function_name: "vuGetAttributes"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetAttributes(FileName)

```Prototype
vuGetAttributes(*CSTRING), Signed
```


## Description
Returns a bitmask representing the attributes of the specified file. Multiple attributes can be combined.

### Parameters

| Parameter | Data Type    | Description                              |
|-----------|--------------|------------------------------------------|
| FileName  | CSTRING(256) | Fully qualified filename to check        |

### Returns
A LONG bitmask containing file attributes:  
- 0 = Normal  
- 1 = Read Only  
- 2 = Hidden  
- 4 = System  
- 32 = Archived  

### Example

```Clarion
FileName = 'C:\Valutilities\Testfile.tps'

Attrib = vuGetAttributes(FileName)

IF BAND(Attrib, 1) = 1
  MESSAGE('File is Read Only')
END

IF BAND(Attrib, 2) = 2
  MESSAGE('File is Hidden')
END

IF BAND(Attrib, 4) = 4
  MESSAGE('File is a System File')
END

IF BAND(Attrib, 32) = 32
  MESSAGE('File is Archived')
END
```

### Notes
- Attributes are returned as a combined bitmask. Use `BAND()` to test individual attributes.  
- Example: a return value of 7 indicates System (4) + Hidden (2) + Read Only (1).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
