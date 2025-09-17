[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuGetDriveListEx(pOutBuffer, cchBuffer)

```Prototype
vuGetDriveListEx(LONG,LONG), LONG
```


## Description
Retrieves an extended list of available drives with detailed information for each.  
The results are written into a caller-provided buffer as text, with fields separated by commas and records separated by CRLF. Each record contains drive attributes such as label, type, filesystem, and capacity.

### Parameters

| Parameter   | Data Type | Description                                                                 |
|-------------|-----------|-----------------------------------------------------------------------------|
| pOutBuffer  | *STRING   | Address of a STRING buffer that receives the drive list data.               |
| cchBuffer   | LONG      | Size of the output buffer in characters (use `SIZE(BufferVar)`).            |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- `-1` if the function succeeded and the buffer contains drive records.  
- 0 if no drives are available.  
- Other negative values may indicate errors (such as insufficient buffer size).

### Example

```Clarion
ROUTINE:Test_VUGetDriveListEx   ROUTINE   !Special parsing for field 6
  DATA
sBuffer       STRING(4096)
DriveListQ    QUEUE
Drive         CSTRING(4)
Label         CSTRING(64)
Type          CSTRING(32)
FileSystem    CSTRING(32)
Free          CSTRING(20)
Total         CSTRING(20)
Ready         BYTE
              END
sLine         STRING(512)
sField        STRING(128)
lResult       LONG
StartPos      LONG
EndPos        LONG
CharIndex     LONG
FieldStart    LONG
FieldEnd      LONG
FieldIndex    LONG
RecordIndex   LONG
sLineIndex    LONG
sReady        STRING(4)

  CODE

  CLEAR(sBuffer)
  lResult = vuGetDriveListEx(ADDRESS(sBuffer), SIZE(sBuffer))

  IF (lResult <> -1)
    MESSAGE('vuGetDriveListEx failed or buffer too small.', 'Error', ICON:Exclamation)
    EXIT
  END

  StartPos = 1

  LOOP CharIndex = 1 TO LEN(CLIP(sBuffer))
    IF sBuffer[CharIndex] = '<13>' AND sBuffer[CharIndex + 1] = '<10>'
      EndPos = CharIndex - 1
      sLine = sBuffer[StartPos : EndPos]
      StartPos = EndPos + 3

      IF CLIP(sLine) = ''
        CYCLE
      END

      CLEAR(DriveListQ)
      FieldStart = 1
      FieldIndex = 0

      LOOP sLineIndex = 1 TO LEN(CLIP(sLine))
        IF sLine[sLineIndex] = ','
          FieldEnd = sLineIndex - 1
          sField = sLine[FieldStart : FieldEnd]

          CASE FieldIndex
            OF 0
              DriveListQ.Drive = CLIP(sField)
            OF 1
              DriveListQ.Label = CLIP(sField)
            OF 2
              DriveListQ.Type = CLIP(sField)
            OF 3
              DriveListQ.FileSystem = CLIP(sField)
            OF 4
              DriveListQ.Free = CLIP(sField)
            OF 5
              DriveListQ.Total = CLIP(sField)
          END

          FieldIndex += 1
          FieldStart = sLineIndex + 1

        ELSE

          IF FieldIndex = 6
            sField = sLine[FieldStart : LEN(CLIP(sLine))]
            DriveListQ.Ready = CLIP(sField)
          END 

        END
      END

      ADD(DriveListQ)
    END
  END

  IF RECORDS(DriveListQ) = 0
    MESSAGE('No drive data returned.', 'vuGetDriveListEx', ICON:Exclamation)
    EXIT
  END

  MESSAGE('Parsed ' & RECORDS(DriveListQ) & ' drive records.', 'vuGetDriveListEx', ICON:Exclamation)

  LOOP RecordIndex = 1 TO RECORDS(DriveListQ)
    GET(DriveListQ, RecordIndex)

    IF DriveListQ.Ready = 1
      sReady = 'Yes'
    ELSE
      sReady = 'No'
    END

    MESSAGE('Drive: ' & DriveListQ.Drive & |
            '|Label: ' & DriveListQ.Label & |
            '|Type: ' & DriveListQ.Type & |
            '|FS: ' & DriveListQ.FileSystem & |
            '|Free: ' & DriveListQ.Free & |
            '|Total: ' & DriveListQ.Total & |
            '|Ready: ' & sReady, 'vuGetDriveListEx', ICON:Exclamation)
  END
```

### Notes
- The buffer contains comma-delimited fields per line; each line represents one drive.  
- A typical record contains: `Drive,Label,Type,FileSystem,Free,Total,Ready`.  
- You must parse the buffer manually or load into a queue as shown above.  
- If you only need a simple list of drives without detailed info, use `vuGetDriveList()` instead.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
