---
title: "vuGetDriveList"
summary: "Retrieves a list of available drive roots and writes the result into the caller-provided buffer."
description: "Retrieves a list of available drive roots and writes the result into the caller-provided buffer.  
Use this for a quick, human-readable list of drives suitable for display. ### Parameters _Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._ ### Returns
- The number of drives written to the buffer on success.  
- 0 if no drives are available.  
- Negative values may indicate an error or an insufficient buffer. ### Example ### Notes
- Ensure the output buffer is large enough to hold the entire list; if the buffer is too small, a negative return may be used to signal an error.  
- The text format is intended for display. If you need structured fields per drive, use `vuGetDriveListEx` instead. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "drive", "into", "buffer", "retrieves", "list", "available", "general", "writes", "result", "roots", "caller"]
function_name: "vuGetDriveList"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetDriveList(pOutBuffer, cchBuffer)

```Prototype
vuGetDriveList(LONG,LONG), LONG
```


## Description
Retrieves a list of available drive roots and writes the result into the caller-provided buffer.  
Use this for a quick, human-readable list of drives suitable for display.

### Parameters

| Parameter   | Data Type | Description                                                                 |
|-------------|-----------|-----------------------------------------------------------------------------|
| pOutBuffer  | *STRING   | Address of a STRING buffer that receives the drive list text.               |
| cchBuffer   | LONG      | Size of the output buffer in characters (use `SIZE(BufferVar)`).            |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- The number of drives written to the buffer on success.  
- 0 if no drives are available.  
- Negative values may indicate an error or an insufficient buffer.

### Example

```Clarion
ROUTINE:Test_VUGetDriveList   ROUTINE
  DATA
sDriveList     STRING(256)
nCount         LONG

  CODE

  CLEAR(sDriveList)

  nCount = vuGetDriveList(ADDRESS(sDriveList), SIZE(sDriveList))

  IF nCount > 0
    MESSAGE('Drives: ' & sDriveList, 'vuGetDriveList')
  ELSE
    MESSAGE('No drives returned or error.', 'vuGetDriveList Error', ICON:Exclamation)
  END

! End TestVUGetDriveList
```

### Notes
- Ensure the output buffer is large enough to hold the entire list; if the buffer is too small, a negative return may be used to signal an error.  
- The text format is intended for display. If you need structured fields per drive, use `vuGetDriveListEx` instead.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
