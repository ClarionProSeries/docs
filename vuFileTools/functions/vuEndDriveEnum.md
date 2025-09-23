---
title: "vuEndDriveEnum"
summary: "Finalizes the drive enumeration sequence and releases internal resources allocated by `vuStartDriveEnum()`."
description: "Finalizes the drive enumeration sequence and releases internal resources allocated by `vuStartDriveEnum()`.  
Call this after looping `vuGetNextDrive()` until it returns 0. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
- Nonzero on success.  
- 0 if there was no active enumeration session to end.  
- Negative values may indicate an error. ### Example ### Notes
- Use `vuEndDriveEnum()` only after a matching `vuStartDriveEnum()` call.  
- If you prefer not to manage start and end explicitly, use `vuGetNextDriveAuto()`, which handles setup and cleanup internally. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "drive", "resources", "internal", "finalizes", "vuenddriveenum", "releases", "general", "allocated", "Clarion", "enumeration", "Windows"]
function_name: "vuEndDriveEnum"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEndDriveEnum()

```Prototype
vuEndDriveEnum(), LONG
```


## Description
Finalizes the drive enumeration sequence and releases internal resources allocated by `vuStartDriveEnum()`.  
Call this after looping `vuGetNextDrive()` until it returns 0.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| (none)    |           | No parameters. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Nonzero on success.  
- 0 if there was no active enumeration session to end.  
- Negative values may indicate an error.

### Example

```Clarion
ROUTINE:Test_vuDriveEnum   ROUTINE

  DATA
sRootPath     CSTRING(4)     ! Buffer for root path (e.g., 'C:\')
dwDriveType   LONG           ! Will hold drive type constant
DriveCount    LONG
Result        LONG
sType         CSTRING(20)
Msg           CSTRING(100)

  CODE

  CLEAR(sRootPath)
  CLEAR(dwDriveType)
  DriveCount = 0

  Result = vuStartDriveEnum()

  LOOP
    Result = vuGetNextDrive(ADDRESS(sRootPath), ADDRESS(dwDriveType))
    IF Result = 0
      BREAK
    END

    CASE dwDriveType
    OF 2  ; sType = 'Removable'
    OF 3  ; sType = 'Fixed'
    OF 4  ; sType = 'Network'
    OF 5  ; sType = 'CD/DVD'
    OF 6  ; sType = 'RAM Disk'
    ELSE  ; sType = 'Unknown'
    END

    DriveCount += 1
    Msg = 'Drive: ' & CLIP(sRootPath) & '  Type: ' & sType
    MESSAGE(Msg)
  END

  Result = vuEndDriveEnum()
```

### Notes
- Use `vuEndDriveEnum()` only after a matching `vuStartDriveEnum()` call.  
- If you prefer not to manage start and end explicitly, use `vuGetNextDriveAuto()`, which handles setup and cleanup internally.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
