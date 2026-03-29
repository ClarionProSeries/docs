---
title: "vuGlobalsGetEmailFolder"
summary: "Gets the current runtime EmailFolder path."
description: "Gets the current runtime EmailFolder path. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalsgetemailfolder", "vugetsavefolder"]
function_name: "vuGlobalsGetEmailFolder"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsGetEmailFolder(xFolder)

## Purpose
Copies the current runtime EmailFolder (save folder) path into a caller-provided buffer.

## Parameters
- `xFolder` (*CSTRING): Output buffer that receives the folder path.

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsGetEmailFolder(*CSTRING OutFolder),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsGetEmailFolder')
  END
END

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
- Value is returned from in-memory globals (load with `vuGlobalsLoad()` if needed).
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuGetSaveFolder` / `vuGlobalsGetEmailFolder`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
