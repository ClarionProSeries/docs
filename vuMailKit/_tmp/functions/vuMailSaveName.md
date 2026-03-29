
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailSaveName(FileName)

```Prototype
vuMailSaveName(*CSTRING FileName),SIGNED,PROC,PASCAL,RAW,NAME('vuMailSaveName')
```

## Description
Sets the file name (or full path) used when vuMailKit saves the next sent email as an .eml file.

### Parameters

| Parameter | Data Type | Description |
|---|---|---|
| FileName | *CSTRING | File name (or full path) to use for the next saved .eml message. |

## Return value
- Returns 0 on success.
- Returns -1 if FileName is blank.

## Notes
- Call this before the send operation so the value is applied to that send.

### Example

````clarion
ROUTINE:Test_vuMailSaveName   ROUTINE
  DATA
RC        LONG
FileName  CSTRING(260)

  CODE
  FileName = '1234Confirmation.eml'
  RC = vuMailSaveName(FileName)
  STOP('RC=' & RC & '|FileName=' & FileName)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)