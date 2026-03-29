---
title: "vuSetCodePage"
summary: "Sets the current runtime code page used by vuMailKit text handling."
description: "Sets the code page used by the live vuMailKit runtime for message text processing. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vusetcodepage", "code page", "encoding"]
function_name: "vuSetCodePage"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSetCodePage()

## Purpose
Sets the current runtime code page used for message text handling.

## Parameters
- `xCodePage` - Numeric code page value.

## Return value
- `1` - Success.

## What this changes
This function updates the current live runtime setting. If you want the code page change to become part of the saved configuration, call `vuGlobalsSave()` afterward.

## Example (Clarion)
```clarion
RC = vuSetCodePage(65001)
```

## Notes
- Use [vuGetCodePage()](vuGetCodePage.md) to read the current runtime value.
- The globals-oriented aliases are [vuGlobalsSetCodePage()](vuGlobalsSetCodePage.md) and [vuGlobalsGetCodePage()](vuGlobalsGetCodePage.md).

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
