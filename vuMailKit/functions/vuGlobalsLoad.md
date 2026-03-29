---
title: "vuGlobalsLoad"
summary: "Loads vuMailKit global settings from the Windows registry into runtime memory."
description: "Loads vuMailKit global settings from the Windows registry into runtime memory. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalsload", "vumailgetglobals"]
function_name: "vuGlobalsLoad"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsLoad()

## Purpose
Loads persisted vuMailKit global settings from registry storage into current runtime memory.

## Parameters
- None.

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsLoad(),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsLoad')
  END
END

rc LONG

rc = vuGlobalsLoad()
IF rc <> 1
  MESSAGE('Unexpected rc from vuGlobalsLoad: ' & rc)
END
```

## Notes
- Legacy alias: [vuMailGetGlobals()](vuMailGetGlobals.md).
- Reads values from `HKCU\SOFTWARE\vuPrograms\vuMail`.
- This function refreshes runtime configuration; call it again if registry values were changed outside the current process.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
