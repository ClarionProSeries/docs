
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsSetEmailFolder()

```Prototype
vuGlobalsSetEmailFolder(*CSTRING InFolder),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsSetEmailFolder')
```

## Purpose
Sets the in-memory `EmailFolder` path used by vuMailKit.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFolder | *CSTRING | Folder path for message output/storage. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsSetEmailFolder(*CSTRING InFolder),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsSetEmailFolder')
  END
END

rc      LONG
folder  CSTRING(520)

folder = 'C:\\Temp\\vuMail'
rc = vuGlobalsSetEmailFolder(folder)
IF rc <> 1
  MESSAGE('vuGlobalsSetEmailFolder failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuSetSaveFolder()](vuSetSaveFolder.md).
- vuMailKit attempts to create the folder if it does not already exist.
- This updates runtime memory only; call `vuGlobalsSave()` to persist to registry.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)