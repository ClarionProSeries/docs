[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetNextDrive(pRootPath, pDriveType)

```Prototype
vuGetNextDrive(LONG,LONG), LONG
```


## Description
Retrieves the next available drive from the internal enumeration list, along with its type.  
This function is part of the three-call drive enumeration sequence:

1. Call `vuStartDriveEnum()` to initialize drive enumeration.  
2. Call `vuGetNextDrive()` repeatedly until it returns 0 (no more drives).  
3. Call `vuEndDriveEnum()` to clean up internal resources.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| pRootPath   | *CSTRING(4)  | Buffer that receives the root path of the drive (for example, `C:\`).       |
| pDriveType  | *LONG        | Address of a LONG that receives the drive type constant.                    |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Nonzero if a drive was successfully retrieved.  
- 0 if there are no more drives to enumerate.  
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

- `vuGetNextDrive()` should only be used between calls to `vuStartDriveEnum()` and `vuEndDriveEnum()`.  
- Drive type constants correspond to Windows API values (2=Removable, 3=Fixed, 4=Network, 5=CD/DVD, 6=RAM Disk).  
- Use `vuGetNextDriveAuto()` if you prefer a simpler, single-call loop without explicit start and end calls.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
