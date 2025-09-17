[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEndDriveEnumEx()

```Prototype
vuEndDriveEnumEx(), LONG
```


## Description
Finalizes the extended drive enumeration sequence and releases any resources allocated by `vuStartDriveEnumEx()`.  
Call this after looping `vuGetNextDriveEx()` until it returns 0.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| (none)    |           | No parameters. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Nonzero on success.  
- 0 if there was no active enumeration session.  
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
- Always call `vuEndDriveEnumEx()` after finishing with `vuGetNextDriveEx()` to free internal resources.  
- Use the extended sequence (`vuStartDriveEnumEx` / `vuGetNextDriveEx` / `vuEndDriveEnumEx`) when you need detailed drive info.  
- For simpler iteration without explicit cleanup, use `vuGetNextDriveExAuto()`.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
