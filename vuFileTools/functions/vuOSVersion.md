[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuOSVersion()

```Prototype
vuOSVersion(), Signed
```

## Description
Returns the Windows Operating System version as a sequential number for easy comparison in code. The current implementation uses RtlGetVersion from ntdll to obtain accurate version info, including Windows 10 and Windows 11, regardless of application manifests.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |           | This function takes no parameters. |

### Returns
A LONG value indicating the detected OS version:

| Value | OS Version            | Notes                                  |
|-------|-----------------------|----------------------------------------|
| 1100  | Windows 11 / Server 2022 | Build number >= 22000                  |
| 1000  | Windows 10 / Server 2016/2019 | Build number < 22000            |
| 630   | Windows 8.1 / Server 2012 R2 |                                   |
| 620   | Windows 8 / Server 2012    |                                   |
| 610   | Windows 7 / Server 2008 R2 |                                   |
| 600   | Windows Vista / Server 2008 |                                  |
| 520   | Windows Server 2003        |                                  |
| 510   | Windows XP                 |                                  |
| 500   | Windows 2000               |                                  |
| 999   | Unknown                    | Fallback when version is not matched |

### Example

```Clarion
CASE vuOSVersion()
OF 1100
  MESSAGE('Windows 11 or Server 2022 detected')
OF 1000
  MESSAGE('Windows 10 or Server 2016/2019 detected')
OF 630
  MESSAGE('Windows 8.1 or Server 2012 R2 detected')
OF 620
  MESSAGE('Windows 8 or Server 2012 detected')
OF 610
  MESSAGE('Windows 7 or Server 2008 R2 detected')
OF 600
  MESSAGE('Windows Vista or Server 2008 detected')
OF 520
  MESSAGE('Windows Server 2003 detected')
OF 510
  MESSAGE('Windows XP detected')
OF 500
  MESSAGE('Windows 2000 detected')
OF 999
  MESSAGE('Unknown Windows version')
END

! Enforce a minimum OS requirement example
IF vuOSVersion() < 500
  MESSAGE('This program requires Windows 2000 or higher')
END
```

### Notes
- Uses RtlGetVersion, which returns the true OS version even when the process lacks a Windows 8.1 or later compatibility manifest.
- Server versions are reported with the same codes as their desktop equivalents. The only exception is Windows Server 2003, which has its own code (520).
- Older legacy codes such as 31, 95, 98, 99, and 350 are no longer returned by the current implementation. Systems not matched by the table will return 999.
- If you need to distinguish additional Windows Server releases by build number, extend the internal mapping before returning the code.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
