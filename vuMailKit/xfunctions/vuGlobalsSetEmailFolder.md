---
title: "vuGlobalsSetEmailFolder"
summary: "Sets the current runtime email save folder."
description: "Sets the email save/export folder in the live vuMailKit runtime. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalssetemailfolder", "folder", "save folder"]
function_name: "vuGlobalsSetEmailFolder"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGlobalsSetEmailFolder()

## Purpose
Sets the current runtime email folder value used by related save/export operations.

## Parameters
- `xFolder` - Folder path to store in the live runtime.

## Return value
- `1` - Success.

## Notes
- This updates the current in-memory value.
- If you want it persisted, call `vuGlobalsSave()` afterward.
- Use [vuGlobalsGetEmailFolder()](vuGlobalsGetEmailFolder.md) to read the current runtime value.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
