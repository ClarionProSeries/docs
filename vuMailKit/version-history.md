---
title: "vuMailKit - Version History"
summary: "Newest versions and release dates are listed first."
description: "Newest versions and release dates are listed first."
keywords: ["documentation", "history", "vuMailKit", "Clarion", "version", "release", "build"]
page_type: "changelog"
last_updated: "2026-06-25"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# vuMailKit - Version History

*Newest versions and release dates are listed first*

| Version | Build | Release Date | Release Notes |
|:--------|:------|:-------------|:--------------|
| 1.1.0 | 157 | 2026-06-25 | Minor feature release for the Basic edition. Groups the Simple HTML helpers, TokenMerge/template-mail helpers, save-folder/test-send compatibility work, clearer licensing/setup diagnostics, expanded Email Setup Wizard documentation, zero-OAuth-code OAuth positioning, and the new recommended stored-profile send flow into the current public release. |
| 1.0 | 156 | 2026-06-24 | Expanded documentation for the vuMailKit Email Setup Wizard, including CTRL+U import, email-address validation, provider/server autodetect, OAuth authorization flow, zero-OAuth-code send positioning, test send, and profile save. |
| 1.0 | 156 | 2026-06-23 | Save-folder and test-send compatibility update. Normal sends, CSV-file sends, and setup/autodetect test sends now honor the same `vuSetSaveFolder()` / `vuGlobalsSetEmailFolder()` outgoing .eml copy behavior and the same `vuSetMailLog()` / `vuLogSetFile()` sent-mail CSV log behavior. |
| 1.0 | 156 | 2026-06-22 | Restored legacy sent-mail CSV logging as a separate log from diagnostics. Added `vuClearMailLog()` for the sent-mail CSV log and `vuClearDiagnosticsLog()` as the preferred diagnostics/protocol clear function. |
| 1.0 | 156 | 2026-06-18 | Moved private licensing/setup failures to the -9001, -9002, and -9003 range and clarified that these are vuMailKit startup/license failures, not mail-server authentication failures. |
| 1.0 | 156 | 2026-04-27 | Added Simple HTML mode: `vuSetSimpleHTML()`, optional header and footer images, body normalization control, and `vuResetSimpleHTML()`. Simple HTML mode lets developers send good-looking HTML email without building the outer HTML wrapper themselves. |
| 1.0 | 156 | 2026-04-27 | Added `TokenMergeFileIntoFile()` for inserting generated file content into a token location in another file. Useful for inserting report-to-text invoice or statement output into HTML email templates. |
| 1.0 | 156 | 2026-04-26 | Added initial TokenMerge helpers: `TokenMergeInString()` and `TokenMergeInFile()`. |
| 1.0 | 1.52 | 2026-04-22 | Updated HTML body automatic build/split features, Updated runtime DLL with additional defensive hardening to improve stability under error conditions. |
| 1.0 | 1.51 | 2026-04-03 | Fixed a vuMailKit Email Setup Wizard navigation issue during manual setup, added the Google OAuth **OAuth Success Name** field for the post-authorization success page, improved the appearance of the Google OAuth success page, updated the Google OAuth documentation, and added guidance for manually configuring OAuth for custom-domain Google Workspace and Microsoft 365 mailboxes when autodetect does not identify the provider. |
| 1.0 | 1.50 | 2026-03-26 | Basic edition first public release. |

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
