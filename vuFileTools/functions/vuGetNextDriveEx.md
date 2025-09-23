---
title: "vuGetNextDriveEx"
summary: "Retrieves extended information about the next available drive."
description: "Retrieves extended information about the next available drive.  
This function is part of the three-call extended enumeration sequence: 1. Call `vuStartDriveEnumEx()` to initialize.  
2. Call `vuGetNextDriveEx()` in a loop until it returns 0.  
3. Call `vuEndDriveEnumEx()` to clean up. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._ ### Returns
- Nonzero if drive information was retrieved.  
- 0 when no more drives are available.  
- Negative values may indicate errors. ### Example ### Notes
- `vuGetNextDriveEx()` provides more detail than `vuGetNextDrive()`, including labels, filesystem type, and space usage.  
- The GROUP structure layout in the example matches what the DLL fills in.  
- Always call `vuEndDriveEnumEx()` to release resources when finished.  
- For a simpler approach without explicit start/end, use `vuGetNextDriveExAuto()`. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "drive", "about", "extended", "vugetnextdriveex", "retrieves", "available", "information", "general", "next", "Clarion", "Windows"]
function_name: "vuGetNextDriveEx"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetNextDriveEx(pDriveInfo)

```Prototype
vuGetNextDriveEx(LONG), LONG
```


## Description
Retrieves extended information about the next available drive.  
This function is part of the three-call extended enumeration sequence:

1. Call `vuStartDriveEnumEx()` to initialize.  
2. Call `vuGetNextDriveEx()` in a loop until it returns 0.  
3. Call `vuEndDriveEnumEx()` to clean up.

### Parameters

| Parameter   | Data Type   | Description                                                                 |
|-------------|-------------|-----------------------------------------------------------------------------|
| pDriveInfo  | *GROUP      | Address of a GROUP structure that receives drive information, including:    |
|             |             | - `RootPath` (CSTRING(4))  drive root (e.g., `C:\`)                        |
|             |             | - `DriveType` (LONG)  type constant                                        |
|             |             | - `IsReady` (LONG)  1 if ready, 0 if not                                   |
|             |             | - `VolumeLabel` (CSTRING(64))  volume label                                |
|             |             | - `FileSystem` (CSTRING(16))  filesystem type (e.g., NTFS, FAT32)          |
|             |             | - `FreeBytes` (CSTRING(20))  free space, as a formatted string             |
|             |             | - `TotalBytes` (CSTRING(20))  total size, as a formatted string            |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._

### Returns
- Nonzero if drive information was retrieved.  
- 0 when no more drives are available.  
- Negative values may indicate errors.

### Example

```Clarion
ROUTINE:Test_vuDriveEnumEx   ROUTINE

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
- `vuGetNextDriveEx()` provides more detail than `vuGetNextDrive()`, including labels, filesystem type, and space usage.  
- The GROUP structure layout in the example matches what the DLL fills in.  
- Always call `vuEndDriveEnumEx()` to release resources when finished.  
- For a simpler approach without explicit start/end, use `vuGetNextDriveExAuto()`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
