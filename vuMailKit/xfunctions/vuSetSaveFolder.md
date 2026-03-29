---
title: "vuSetSaveFolder"
summary: "Legacy alias for vuGlobalsSetEmailFolder()."
description: "Legacy vuMail function name. This function is an alias for vuGlobalsSetEmailFolder() and behaves identically. Use vuGlobalsSetEmailFolder() for new development. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusetsavefolder", "vuglobalssetemailfolder"]
function_name: "vuSetSaveFolder"
category: "Globals and Configuration"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSetSaveFolder()

```Prototype
vuSetSaveFolder(*CSTRING), LONG
```

## Description
This is the legacy `vuMail` function name for setting the configured email/attachment save folder.

Preferred function name:

- [vuGlobalsSetEmailFolder()](vuGlobalsSetEmailFolder.md)

This function is exported for backward compatibility and behaves identically to `vuGlobalsSetEmailFolder()`.

## What it changes
This updates the live runtime configuration value for the save folder.

That means it affects where functions that save email content, attachments, or embedded items will write files for the current session.

If you want that runtime change persisted, save the globals or save the active managed profile as appropriate for your workflow.

## Notes
- Use `vuGlobalsSetEmailFolder()` for new development.
- This does not automatically create the folder. It sets the configured path value used by later save operations.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
