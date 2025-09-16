[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuGetEnumeratedEntryA(Index, feEntry)

```Prototype
vuGetEnumeratedEntryA(LONG,*GROUP), LONG
```


## Description
Retrieves information about a single entry from the results of a previous `vuEnumerateFolderA` call.  
Entries can include files or subfolders, along with their attributes, size, and timestamps.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| Index     | LONG      | Zero-based index of the entry to retrieve. Must be less than the count returned by `vuEnumerateFolderA`. |
| feEntry   | *GROUP    | Address of a GROUP structure that will be filled with the entry details.    |

The `feEntry` GROUP should contain fields for name, full path, attributes, size, date, and time. For example:

```Clarion
feEntry GROUP
sName       CSTRING(260)
sFullPath   CSTRING(260)
bIsFolder   LONG
dwSizeLow   ULONG
dwSizeHigh  ULONG
dwAttrs     ULONG
wDate       USHORT
wTime       USHORT
        END
```

### Returns
- 1 if the entry information was successfully retrieved.  
- 0 if the entry could not be retrieved (invalid index or no data).  

### Example

```Clarion
sTestFolder CSTRING(260)
feEntry     GROUP
sName       CSTRING(260)
sFullPath   CSTRING(260)
bIsFolder   LONG
dwSizeLow   ULONG
dwSizeHigh  ULONG
dwAttrs     ULONG
wDate       USHORT
wTime       USHORT
        END
EntryCount  LONG
Index       LONG
sInfo       CSTRING(1024)

  CODE
  sTestFolder = 'C:\Windows'
  EntryCount  = vuEnumerateFolderA(sTestFolder)

  IF EntryCount <= 0
    MESSAGE('vuEnumerateFolderA returned no entries.', 'Test Result')
    RETURN
  END

  LOOP Index = 0 TO 9
    IF Index >= EntryCount THEN BREAK.

    IF vuGetEnumeratedEntryA(Index, feEntry)
      sInfo = CLIP(feEntry.sName)
      IF feEntry.bIsFolder
        sInfo = sInfo & '   [DIR]'
      ELSE
        sInfo = sInfo & '   ' & FORMAT(feEntry.dwSizeLow) & ' bytes'
      END
      MESSAGE(sInfo, 'Entry ' & FORMAT(Index+1))
    ELSE
      MESSAGE('Failed to retrieve entry #' & FORMAT(Index), 'Error')
    END
  END
```

### Notes
- Always call `vuEnumerateFolderA` first to initialize the enumeration.  
- `Index` must be within the valid range of entries.  
- Folder entries are marked with `bIsFolder = 1`.  
- File size values are split into low and high DWORD parts (`dwSizeLow` and `dwSizeHigh`).

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
