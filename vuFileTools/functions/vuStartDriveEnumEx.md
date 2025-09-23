---
title: "vuStartDriveEnumEx"
summary: "Initializes extended drive enumeration."
description: "Initializes extended drive enumeration.  
This function must be called before using `vuGetNextDriveEx()` to retrieve drive details.  
When enumeration is complete, call `vuEndDriveEnumEx()` to release resources. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
- Nonzero if initialization succeeded.  
- 0 if initialization failed.  
- Negative values may indicate errors. ### Example ### Notes
- Always call `vuStartDriveEnumEx()` before calling `vuGetNextDriveEx()`.  
- Extended enumeration returns more details than the basic `vuGetNextDrive()` (including volume label, filesystem, and capacity).  
- Call `vuEndDriveEnumEx()` after finishing enumeration to avoid resource leaks.  
- For a simplified one-call loop, consider `vuGetNextDriveExAuto()`. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["initializes", "vustartdriveenumex", "vuFileTools", "drive", "extended", "general", "Clarion", "enumeration", "Windows"]
function_name: "vuStartDriveEnumEx"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuStartDriveEnumEx()

```Prototype
vuStartDriveEnumEx(), LONG
```


## Description
Initializes extended drive enumeration.  
This function must be called before using `vuGetNextDriveEx()` to retrieve drive details.  
When enumeration is complete, call `vuEndDriveEnumEx()` to release resources.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| (none)    |           | No parameters. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Nonzero if initialization succeeded.  
- 0 if initialization failed.  
- Negative values may indicate errors.

### Example

```Clarion
ROUTINE:Test_vuDriveEnumEx   ROUTINE

  ! This test demonstrates the 3-call version of vuGetNextDriveEx:
  !   1. vuStartDriveEnumEx()  Initializes
  !   2. vuGetNextDriveEx()  Loops per drive
  !   3. vuEndDriveEnumEx()  Cleanup

  DATA
DriveInfo    GROUP
RootPath     CSTRING(4)
DriveType    LONG
IsReady      LONG
VolumeLabel  CSTRING(64)
FileSystem   CSTRING(16)
FreeBytes    CSTRING(20)
TotalBytes   CSTRING(20)
           END

Result       LONG
Msg          CSTRING(512)
sType        CSTRING(20)
sReady       CSTRING(4)

  CODE

  CLEAR(DriveInfo)
  Result = vuStartDriveEnumEx()

  LOOP
    Result = vuGetNextDriveEx(ADDRESS(DriveInfo))
    IF Result = 0
      BREAK
    END

    CASE DriveInfo.DriveType
    OF 2  ; sType = 'Removable'
    OF 3  ; sType = 'Fixed'
    OF 4  ; sType = 'Network'
    OF 5  ; sType = 'CD/DVD'
    OF 6  ; sType = 'RAM Disk'
    ELSE  ; sType = 'Unknown'
    END

    IF DriveInfo.IsReady = 1
      sReady = 'Yes'
    ELSE
      sReady = 'No'
    END

    Msg = 'Drive: ' & CLIP(DriveInfo.RootPath) & '  Type: ' & sType & |
          '  Ready: ' & sReady & '<13,10>' & |
          'Label: ' & CLIP(DriveInfo.VolumeLabel) & '<13,10>' & |
          'FSys:  ' & CLIP(DriveInfo.FileSystem) & '<13,10>' & |
          'Total: ' & CLIP(DriveInfo.TotalBytes) & ' bytes' & '<13,10>' & |
          'Free:  ' & CLIP(DriveInfo.FreeBytes) & ' bytes'

    MESSAGE(Msg)
  END

  Result = vuEndDriveEnumEx()
```

### Notes
- Always call `vuStartDriveEnumEx()` before calling `vuGetNextDriveEx()`.  
- Extended enumeration returns more details than the basic `vuGetNextDrive()` (including volume label, filesystem, and capacity).  
- Call `vuEndDriveEnumEx()` after finishing enumeration to avoid resource leaks.  
- For a simplified one-call loop, consider `vuGetNextDriveExAuto()`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
