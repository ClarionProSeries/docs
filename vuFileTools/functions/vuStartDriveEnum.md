---
title: "vuStartDriveEnum"
summary: "Begins a drive enumeration session."
description: "Begins a drive enumeration session.  
Call this first, then loop with `vuGetNextDrive`, and finally call `vuEndDriveEnum` to clean up. ### Parameters ### Returns
- 1 on success.  
- 0 on failure.  
- Negative values may indicate errors. ### Example ### Notes
- Must be paired with `vuEndDriveEnum()`; do not mix with the `Ex` or `Auto` variants.  
- Use `ADDRESS()` to pass pointers for the root path buffer and the drive type LONG to `vuGetNextDrive`.  
- Drive type values: 2=Removable, 3=Fixed, 4=Network, 5=CD/DVD, 6=RAM Disk. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["begins", "vuFileTools", "drive", "session", "general", "Clarion", "enumeration", "Windows", "vustartdriveenum"]
function_name: "vuStartDriveEnum"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuStartDriveEnum()

```Prototype
vuStartDriveEnum(), LONG
```


## Description
Begins a drive enumeration session.  
Call this first, then loop with `vuGetNextDrive`, and finally call `vuEndDriveEnum` to clean up.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
- 1 on success.  
- 0 on failure.  
- Negative values may indicate errors.

### Example

```Clarion
! Three-call drive enumeration:
!   1) vuStartDriveEnum()
!   2) vuGetNextDrive(ADDRESS(sRootPath), ADDRESS(dwDriveType)) in a loop
!   3) vuEndDriveEnum()

sRootPath   CSTRING(4)   ! e.g., 'C:\'
dwDriveType LONG
Result      LONG
sType       CSTRING(20)
Msg         CSTRING(100)

  CODE
  CLEAR(sRootPath)
  CLEAR(dwDriveType)

  Result = vuStartDriveEnum()
  IF Result = 0
    MESSAGE('Failed to start drive enumeration.')
    RETURN
  END

  LOOP
    Result = vuGetNextDrive(ADDRESS(sRootPath), ADDRESS(dwDriveType))
    IF Result = 0
      BREAK   ! no more drives
    END

    CASE dwDriveType
    OF 2  ; sType = 'Removable'
    OF 3  ; sType = 'Fixed'
    OF 4  ; sType = 'Network'
    OF 5  ; sType = 'CD/DVD'
    OF 6  ; sType = 'RAM Disk'
    ELSE  ; sType = 'Unknown'
    END

    Msg = 'Drive: ' & CLIP(sRootPath) & '  Type: ' & sType
    MESSAGE(Msg)
  END

  Result = vuEndDriveEnum()
```

### Notes
- Must be paired with `vuEndDriveEnum()`; do not mix with the `Ex` or `Auto` variants.  
- Use `ADDRESS()` to pass pointers for the root path buffer and the drive type LONG to `vuGetNextDrive`.  
- Drive type values: 2=Removable, 3=Fixed, 4=Network, 5=CD/DVD, 6=RAM Disk.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
