---
title: "vuGlobalsSave"
summary: "Saves the live vuMailKit runtime settings to persistent storage."
description: "Saves the current in-memory vuMailKit settings. Before managed profiles exist, this normally writes the legacy vuMail registry values. After managed profiles exist, it normally updates the active managed profile instead. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalssave", "vumailsaveglobals", "globals", "profile", "registry"]
function_name: "vuGlobalsSave"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGlobalsSave()

## Purpose
Saves the current live runtime configuration.

This is the preferred name for the old `vuMailSaveGlobals()` behavior.

## Parameters
- None.

## Return value
- `1` - Save completed.

## What it saves
This function writes the current in-memory vuMailKit configuration to persistent storage.

That means any values you have changed with setter functions during the current session become the new saved values.

## Legacy mode versus managed profile mode
Before a managed profile exists, this function normally saves to the legacy `vuMail` registry storage.

Legacy registry path:

- `HKCU\SOFTWARE\vuPrograms\vuMail`

After a managed profile exists, normal save behavior changes. In that case, `vuGlobalsSave()` normally writes the current runtime values into the active managed profile instead of using the old `vuMail` registry key as the primary destination.

For a fuller explanation, see [AboutGlobalMemory](AboutGlobalMemory.md).

## When to use it
Use this function when you want your current runtime edits to become the saved configuration.

Typical reasons include:

- saving legacy global settings after manual setup
- persisting runtime overrides made with setter functions
- updating the active managed profile from the current runtime state

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsSave(),LONG,PASCAL,RAW,NAME('vuGlobalsSave')
  END
END

RC LONG

RC = vuGlobalsSave()
IF RC <> 1
  MESSAGE('Unexpected rc from vuGlobalsSave: ' & RC)
END
```

## Notes
- Preferred name: `vuGlobalsSave()`.
- Legacy alias: [vuMailSaveGlobals()](vuMailSaveGlobals.md).
- In managed profile mode, this updates the active managed profile.
- If you do not call save, runtime changes remain in memory only for the current session.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
