[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEnumerateFolderA(sFolder)

```Prototype
vuEnumerateFolderA(*CSTRING), LONG
```


## Description
Enumerates the contents of a specified folder and prepares entries for retrieval with `vuGetEnumeratedEntryA`.  
This is the first step in a two-part process to list files and subfolders.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| sFolder   | CSTRING(260) | Full path of the folder to enumerate (for example, `C:\Windows`).           |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Number of entries in the folder if successful.  
- 0 if the folder is empty or not found.  
- Negative values may indicate errors such as invalid arguments.

### Example

```Clarion
sTestFolder CSTRING(260)
feEntry     GROUP
sName         CSTRING(260)
sFullPath     CSTRING(260)
bIsFolder     LONG
dwSizeLow     ULONG
dwSizeHigh    ULONG
dwAttrs       ULONG
wDate         USHORT
wTime         USHORT
            END
EntryCount  LONG
Index       LONG
sInfo       CSTRING(1024)

  CODE
  sTestFolder = 'C:\Windows'

  EntryCount = vuEnumerateFolderA(sTestFolder)

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
Notes

Always call vuGetEnumeratedEntryA after vuEnumerateFolderA to access the details of each entry.

Results include both files and subfolders, with attributes and timestamps.

Only the number of entries is returned by vuEnumerateFolderA; entry data is retrieved separately.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
