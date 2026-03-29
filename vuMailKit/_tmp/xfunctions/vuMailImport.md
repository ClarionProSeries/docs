
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailImport(xFilePath)

## Purpose
Loads an RFC822 message file and stores it as the current legacy in-process message.

## Parameters
- `xFilePath` (*CSTRING): Source message file path.

## Return value / error codes
- `0`: Success.
- `-1`: Blank file path.
- `-2`: File not found or read/parse error.
- `-3`: File exists but is empty.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailImport(*CSTRING xFilePath),LONG,PASCAL,RAW,NAME('vuMailImport')
  END
END

rc LONG
src CSTRING(260)
src = 'C:\Temp\inbound.eml'
rc = vuMailImport(src)
IF rc <> 0
  MESSAGE('Import failed code ' & rc & ': ' & vuMailLastError())
END
```

## Notes
- On success, the imported message becomes available to legacy read/export helpers.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailImport`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)