---
title: "vuMailSaveGlobals"
summary: "Legacy alias for vuGlobalsSave()."
description: "Legacy vuMail function name. This function saves the current live runtime settings by calling the preferred function, vuGlobalsSave(). [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vumailsaveglobals", "vuglobalssave"]
function_name: "vuMailSaveGlobals"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailSaveGlobals()

## Description
This is the legacy `vuMail` function name for `vuGlobalsSave()`.

Preferred function name:

- [vuGlobalsSave()](vuGlobalsSave.md)

It behaves the same way as `vuGlobalsSave()` and saves the current live runtime configuration.

## Return value
- `1` - Save completed.

## Notes
- Before managed profiles exist, this normally writes the legacy `vuMail` registry settings.
- After managed profiles exist, normal behavior is to update the active managed profile instead.
- For the full behavior model, see [AboutGlobalMemory](AboutGlobalMemory.md).

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
