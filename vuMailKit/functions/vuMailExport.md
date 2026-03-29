---
title: "vuMailExport"
summary: "Exports the currently loaded legacy message to an .eml file."
description: "Exports the currently loaded legacy message to an .eml file. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vumailexport"]
function_name: "vuMailExport"
category: "Legacy Compatibility"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailExport(xFilePath)

## Purpose
Writes the currently loaded in-process message to an RFC822 `.eml` file.

## Parameters
- `xFilePath` (*CSTRING): Destination file path.

## Return value / error codes
- `0`: Success.
- `-1`: Blank file path or no message currently loaded.
- `-2`: Write/open failure or other exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailExport(*CSTRING InFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuMailExport')
  END
END

rc LONG
path CSTRING(260)
path = 'C:\Temp\exported.eml'
rc = vuMailExport(path)
IF rc <> 0
  MESSAGE('Export failed code ' & rc & ': ' & vuMailLastError())
END
```

## Notes
- Creates the destination directory when needed.
- This export depends on a message already loaded into the legacy session state.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailExport`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
