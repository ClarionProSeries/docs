[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuIsDriveReady(DriveLetter)

```Prototype
vuIsDriveReady(*CSTRING), Signed
```


## Description
Checks whether the specified drive is ready for use (e.g., contains media and is accessible).

### Parameters

| Parameter   | Data Type   | Description                                |
|-------------|-------------|--------------------------------------------|
| DriveLetter | CSTRING(2)  | Uppercase single-character drive letter    |

### Returns
1 (True) if the drive is ready, 0 (False) otherwise.

### Example

```Clarion
DriveLetter = 'A'

IF vuIsDriveReady(DriveLetter) = 1
  MESSAGE('The floppy drive contains a disk and is ready for use')
ELSE
  MESSAGE('Drive is not ready')
END
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
