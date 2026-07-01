
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsSetEmailFolder()

## Clarion prototype

**Prototype:** vuGlobalsSetEmailFolder(*CSTRING InFolder), SIGNED, PROC, PASCAL, RAW, NAME('vuGlobalsSetEmailFolder')

## Purpose
Sets the in-memory EmailFolder path used by vuMailKit for outgoing .eml message copies.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFolder | *CSTRING | Folder path for outgoing .eml message copies. Passing a blank value disables outgoing .eml copy saving. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Success. |

## Example (Clarion)
```clarion
rc      LONG
folder  CSTRING(520)

folder = 'C:\Temp\vuMail'
rc = vuGlobalsSetEmailFolder(folder)
IF rc <> 1
  MESSAGE('vuGlobalsSetEmailFolder failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuSetSaveFolder()](vuSetSaveFolder.md).
- This is the same runtime setting used by the legacy vuSetSaveFolder() call. Either function may be used.
- Passing a blank folder turns off outgoing .eml copy saving.
- The save folder applies to normal sends, CSV-file sends, and setup/autodetect test-send messages.
- When the folder is set and valid, vuMailKit saves an outgoing .eml copy before the SMTP send attempt.
- vuMailKit attempts to create the folder when this function is called. The function still returns 1 after updating the runtime setting; if the folder remains invalid or cannot be created, the later send can fail with an email-save-folder error.
- If a sent-mail CSV log is also configured by vuSetMailLog() or vuLogSetFile(), successful rows include the saved .eml path.
- This updates runtime memory only; call vuGlobalsSave() to persist to registry.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)