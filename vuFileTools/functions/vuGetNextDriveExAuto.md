[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetNextDriveExAuto(pDriveInfo)

```Prototype
vuGetNextDriveExAuto(LONG), LONG
```


## Description
Retrieves extended information about the next available drive with automatic initialization and cleanup.  
Unlike the three-call sequence (`vuStartDriveEnumEx`, `vuGetNextDriveEx`, `vuEndDriveEnumEx`), this function handles start and end internally. It begins enumeration on the first call and frees resources automatically when no more drives are available.

### Parameters

| Parameter   | Data Type   | Description                                                                 |
|-------------|-------------|-----------------------------------------------------------------------------|
| pDriveInfo  | *GROUP      | Address of a GROUP structure that receives drive information, including:    |
|             |             | - `RootPath` (CSTRING(4))  drive root (e.g., `C:\`)                        |
|             |             | - `DriveType` (LONG)  type constant                                        |
|             |             | - `IsReady` (LONG)  1 if ready, 0 if not                                   |
|             |             | - `VolumeLabel` (CSTRING(64))  volume label                                |
|             |             | - `FileSystem` (CSTRING(16))  filesystem type                              |
|             |             | - `FreeBytes` (CSTRING(20))  free space, as a formatted string             |
|             |             | - `TotalBytes` (CSTRING(20))  total size, as a formatted string            |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._

### Returns
- Nonzero if drive information was retrieved.  
- 0 when no more drives are available (also performs cleanup).  
- Negative values may indicate errors.

### Example

```Clarion
ROUTINE:Test_vuDriveEnumExAuto   ROUTINE

  ! This test demonstrates the auto version vuGetNextDriveExAuto().
  ! It automatically starts on first call and ends when done.

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

  LOOP
    Result = vuGetNextDriveExAuto(ADDRESS(DriveInfo))
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
```

### Notes
- No separate `vuStartDriveEnumEx()` or `vuEndDriveEnumEx()` calls are required when using `vuGetNextDriveExAuto()`.  
- Provides the same extended drive details as `vuGetNextDriveEx()`, but with simplified usage.  
- Use this function for most scenarios unless you need explicit control of the enumeration lifecycle.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
