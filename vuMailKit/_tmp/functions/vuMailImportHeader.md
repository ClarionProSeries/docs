
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailImportHeader(xName)

## Clarion prototype

**Prototype:** vuMailImportHeader(*CSTRING InFileName), SIGNED, PROC, PASCAL, RAW, NAME('vuMailImportHeader')

## Purpose
Loads only the header block from an email file and stores those headers in the legacy in-process message state.

## Parameters
- xName (*CSTRING): Source message file path.

## Return value / error codes
| Value | Meaning |
|---|---|
| 0 | Success. |
| -1 | Blank filename. |
| -2 | File not found or parse/open error. |
| -3 | File is empty. |

## Example (Clarion)
```clarion
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
- Legacy reference: vuMailDump.pdf, section heading vuMailImportHeader.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)