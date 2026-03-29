
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailImportHeader(xName)

## Purpose
Loads only the header block from an email file and stores those headers in the legacy in-process message state.

## Parameters
- `xName` (*CSTRING): Source message file path.

## Return value / error codes
- `0`: Success.
- `-1`: Blank filename.
- `-2`: File not found or parse/open error.
- `-3`: File is empty.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailImportHeader(*CSTRING InFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuMailImportHeader')
  END
END

rc LONG
src CSTRING(260)
src = 'C:\Temp\inbound.eml'
rc = vuMailImportHeader(src)
IF rc <> 0
  MESSAGE('Import header failed code ' & rc & ': ' & vuMailLastError())
END
```

## Notes
- Body content is not loaded by this function.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailImportHeader`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)