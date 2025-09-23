---
title: "vuGetStartupItem"
summary: "Retrieves information about a specific startup item, including its name, path, and type."
description: "Retrieves information about a specific startup item, including its name, path, and type. Use in combination with `vuEnumerateStartupItems` to list all startup entries. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the sizes shown above. The numbers are for example only._ ### Returns
A LONG value indicating the type of startup item: - 0: File shortcut (.lnk)  
- 1: Registry RUN entry  
- 2: Registry RUNONCE entry  
- Other: Unknown type   ### Example Notes Call vuEnumerateStartupItems first to get the count of items for a given scope. Index is 1-based; passing an invalid index will fail. Buffers must be preallocated to a sufficient size. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "about", "path", "retrieves", "including", "type", "information", "general", "specific", "vugetstartupitem", "item", "Clarion"]
function_name: "vuGetStartupItem"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetStartupItem(Scope, Index, NameBuf, cchName, PathBuf, cchPath)

```Prototype
vuGetStartupItem(LONG,LONG,*CSTRING,LONG,*CSTRING,LONG), LONG
```


## Description
Retrieves information about a specific startup item, including its name, path, and type. Use in combination with `vuEnumerateStartupItems` to list all startup entries.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| Scope     | LONG         | `0` = Current User Startup, `1` = Common (All Users) Startup.               |
| Index     | LONG         | 1-based index of the startup item to retrieve.                              |
| NameBuf   | CSTRING(*)   | Buffer to receive the name of the startup item.                             |
| cchName   | LONG         | Size of the NameBuf buffer in characters.                                   |
| PathBuf   | CSTRING(*)   | Buffer to receive the full path of the startup item.                        |
| cchPath   | LONG         | Size of the PathBuf buffer in characters.                                   |

_Note: In vuFileTools V5, CSTRINGs are not limited to the sizes shown above. The numbers are for example only._

### Returns
A LONG value indicating the type of startup item:

- 0: File shortcut (.lnk)  
- 1: Registry RUN entry  
- 2: Registry RUNONCE entry  
- Other: Unknown type  

### Example

```Clarion
Scope     LONG
ItemCount LONG
I         LONG
Kind      LONG
NameBuf   CSTRING(260)
PathBuf   CSTRING(1024)
cchName   LONG
cchPath   LONG
KindText  CSTRING(12)
Msg       CSTRING(1024)

cchName = SIZE(NameBuf)
cchPath = SIZE(PathBuf)

Scope     = 0  ! User Startup
ItemCount = vuEnumerateStartupItems(Scope)

IF ItemCount > 0
  LOOP I = 1 TO ItemCount
    CLEAR(NameBuf)
    CLEAR(PathBuf)

    Kind = vuGetStartupItem(Scope, I, NameBuf, cchName, PathBuf, cchPath)

    IF Kind = 0
      KindText = '[FILE]'
    ELSIF Kind = 1
      KindText = '[RUN]'
    ELSIF Kind = 2
      KindText = '[RUNONCE]'
    ELSE
      KindText = '[UNKNOWN]'
    END

    Msg = 'Item ' & FORMAT(I) & ' ' & KindText & '  ' & CLIP(NameBuf) & '  ' & CLIP(PathBuf)
    MESSAGE(Msg, 'vuGetStartupItem Test')
  END
ELSE
  MESSAGE('No items found.', 'vuGetStartupItem Test')
END

```
Notes

Call vuEnumerateStartupItems first to get the count of items for a given scope.

Index is 1-based; passing an invalid index will fail.

Buffers must be preallocated to a sufficient size.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
