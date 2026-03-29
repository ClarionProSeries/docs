---
title: "vuGlobalsSave"
summary: "Saves vuMailKit global settings from runtime memory to the Windows registry."
description: "Saves vuMailKit global settings from runtime memory to the Windows registry. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalssave", "vumailsaveglobals"]
function_name: "vuGlobalsSave"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsSave()

## Purpose
Saves current vuMailKit runtime global values to `HKCU\SOFTWARE\vuPrograms\vuMail`.

## Parameters
- None.

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsSave(),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsSave')
  END
END

rc LONG

rc = vuGlobalsSave()
IF rc <> 1
  MESSAGE('vuGlobalsSave failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuMailSaveGlobals()](vuMailSaveGlobals.md).
- Persists values such as SMTP/POP settings, proxy settings, code page, and email folder.
- If `vuGlobalsSetNoPasswordInRegistry(1)` is active, SMTP password is intentionally not written.
- AuthMode/OAuth settings are not changed by this call.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
