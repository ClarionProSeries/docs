
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsGetEmailFolder(xFolder)

## Clarion prototype

**Prototype:** vuGlobalsGetEmailFolder(*CSTRING OutFolder), SIGNED, PROC, PASCAL, RAW, NAME('vuGlobalsGetEmailFolder')

## Purpose
Copies the current runtime EmailFolder (save folder) path into a caller-provided buffer.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| OutFolder | *CSTRING | Caller-provided output buffer that receives the current folder path. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Success. |

## Example (Clarion)
```clarion
folder CSTRING(520)
rc     LONG

CLEAR(folder)
rc = vuGlobalsGetEmailFolder(folder)
IF rc = 1
  MESSAGE('Email folder=' & folder)
ELSE
  MESSAGE('vuGlobalsGetEmailFolder failed: ' & vuMailLastError())
END
```

## Notes
- Legacy alias: [vuGetSaveFolder()](vuGetSaveFolder.md).
- Value is returned from in-memory globals. Call `vuGlobalsLoad()` first if you need the saved registry value loaded into memory.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuGetSaveFolder` / `vuGlobalsGetEmailFolder`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)