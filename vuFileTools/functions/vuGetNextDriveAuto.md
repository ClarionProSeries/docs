[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuGetNextDriveAuto(pRootPath, pDriveType)

```Prototype
vuGetNextDriveAuto(LONG,LONG), LONG
```


## Description
Retrieves the next available drive and its type, with automatic start and cleanup.  
Unlike the three-call sequence (`vuStartDriveEnum` / `vuGetNextDrive` / `vuEndDriveEnum`), this function lazily initializes the enumeration on the first call and automatically releases resources when there are no more drives.

### Parameters

| Parameter  | Data Type   | Description                                                                  |
|------------|-------------|------------------------------------------------------------------------------|
| pRootPath  | *CSTRING(4) | Buffer that receives the drive root path (for example, `C:\`).               |
| pDriveType | *LONG       | Address of a LONG that receives the drive type constant.                     |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Nonzero if a drive was returned.  
- 0 when there are no more drives to enumerate.  
- Negative values may indicate an error.

### Example

```Clarion
ROUTINE:Test_vuDriveEnumAuto   ROUTINE

  ! This test demonstrates the automatic drive enumeration process using:
  !   vuGetNextDriveAuto() which performs lazy initialization on first call,
  !   returns one drive per call, and performs cleanup when done.

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

  LOOP
    Result = vuGetNextDriveAuto(ADDRESS(sRootPath), ADDRESS(dwDriveType))
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
```

### Notes
- No separate `vuStartDriveEnum` or `vuEndDriveEnum` calls are required when using `vuGetNextDriveAuto`.  
- Drive type constants align with Windows values: 2=Removable, 3=Fixed, 4=Network, 5=CD/DVD, 6=RAM Disk.  
- For scenarios requiring explicit control of setup and teardown, use the three-call sequence instead.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
