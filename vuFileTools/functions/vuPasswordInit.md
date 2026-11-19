---
title: "vuPasswordInit - Renamed in Build 210"
summary: "Retired vuFileTools function name. Use vuFTPasswordInit beginning with Build 210."
description: "Migration notice for the renamed password-control function; the old name is not exported by vuFileTools Build 210."
keywords: ["vuFileTools", "vuPasswordInit", "vuFTPasswordInit", "renamed", "Secure Login", "migration", "Build 210"]
page_type: "migration-notice"
last_updated: "2026-10-26"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPasswordInit - Renamed in Build 210

**This is an older vuFileTools function name and is no longer available in Build 210 or later.**

The replacement is **[vuFTPasswordInit](vuFTPasswordInit.md)**, which initializes the managed password control.

The functionality is retained; only the vuFileTools public function name and DLL export name changed. The change prevents conflicts when vuFileTools and vuMailKit are used in the same Clarion application. **vuMailKit's function names are unchanged.**

If your application calls `vuPasswordInit`, replace that call with `vuFTPasswordInit` and use the updated Build 210 vuFileTools global extension or manual MAP declarations. If you previously imported the Secure Login TXA, update its embeds or carefully reimport the Build 210 version. **Rebuild the application against the new DLL and matching LIB before deployment.** Replacing the DLL alone is not sufficient for an application already compiled against the old export.

See [Secure Login Window and Build 210 Migration](../secure-login.md) for steps that preserve customized windows.

**Current reference:** [vuFTPasswordInit](vuFTPasswordInit.md).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
