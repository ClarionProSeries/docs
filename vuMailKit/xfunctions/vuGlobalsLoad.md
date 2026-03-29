---
title: "vuGlobalsLoad"
summary: "Loads saved vuMail settings into the live runtime configuration."
description: "Loads saved settings into the current vuMailKit runtime. Before managed profiles exist, this normally reads the legacy vuMail registry values. After managed profiles exist, it normally loads the active managed profile instead. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalsload", "vumailgetglobals", "globals", "profile", "registry"]
function_name: "vuGlobalsLoad"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGlobalsLoad()

## Purpose
Loads persisted configuration values into the live vuMailKit runtime.

This is the preferred name for the old `vuMailGetGlobals()` behavior.

## Parameters
- None.

## Return value
- `1` - Load completed.

## What it loads
This function refreshes the current in-memory configuration that vuMailKit uses while the DLL is active.

That includes values such as:

- SMTP and POP3 server settings
- user IDs and passwords
- log file settings
- code page
- save folder and related options

## Legacy mode versus managed profile mode
Before a managed profile exists, this function normally loads values from the legacy `vuMail` storage model.

Legacy registry path:

- `HKCU\SOFTWARE\vuPrograms\vuMail`

After a managed profile exists, normal load behavior changes. In that case, `vuGlobalsLoad()` normally loads the active managed profile into runtime memory instead of using the old `vuMail` registry key as the primary source.

For a fuller explanation, see [AboutGlobalMemory](AboutGlobalMemory.md).

## When to use it
Use this function when you want to refresh the current runtime settings from saved storage.

Typical reasons include:

- loading older legacy settings at program startup
- reloading the active managed profile after a manual reset
- returning runtime memory to the last saved state

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsLoad(),LONG,PASCAL,RAW,NAME('vuGlobalsLoad')
  END
END

RC LONG

RC = vuGlobalsLoad()
IF RC <> 1
  MESSAGE('Unexpected rc from vuGlobalsLoad: ' & RC)
END
```

## Notes
- Preferred name: `vuGlobalsLoad()`.
- Legacy alias: [vuMailGetGlobals()](vuMailGetGlobals.md).
- This function replaces the current live runtime values with saved values.
- Unsaved runtime changes are discarded when the saved values are loaded.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
