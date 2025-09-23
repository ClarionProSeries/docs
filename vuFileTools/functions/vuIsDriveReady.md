---
title: "vuIsDriveReady"
summary: "Checks whether the specified drive is ready for use (e."
description: "Checks whether the specified drive is ready for use (e.g., contains media and is accessible). ### Parameters ### Returns
1 (True) if the drive is ready, 0 (False) otherwise. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "drive", "ready", "specified", "whether", "general", "Clarion", "checks", "Windows", "vuisdriveready"]
function_name: "vuIsDriveReady"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
