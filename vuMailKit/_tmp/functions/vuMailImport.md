
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailImport(xFilePath)

## Clarion prototype

**Prototype:** vuMailImport(*CSTRING InFileName), SIGNED, PROC, PASCAL, RAW, NAME('vuMailImport')

## Purpose
Loads an RFC822 message file and stores it as the current legacy in-process message.

## Parameters
- `xFilePath` (*CSTRING): Source message file path.

## Return value / error codes
| Value | Meaning |
|---|---|
| 0 | Success. |
| -1 | Blank file path. |
| -2 | File not found or read/parse error. |
| -3 | File exists but is empty. |

## Example (Clarion)
```clarion
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

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)