
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# What's New in vuMailKit

Basic edition documentation refresh

Release date: 2026-03-26

This page highlights the major areas that were recently stabilized and documented in the current vuMailKit Basic edition work.

## Recent highlights

- Added licensing initialization and license-diagnostics documentation
- Added DEMO-mode documentation and restrictions
- Clarified managed profile save, load, and immediate-apply behavior
- Expanded the function-level documentation for autodetect, deep scan, POP3, globals, logging, and profile workflows

## Major function areas now documented

| Area | Notes |
|------|-------|
| Licensing | `vuMailKitInitialize()` and `vuMailKitGetLicenseInfo()` now reflect the current Basic-edition licensing model. |
| Managed Profiles | Save/load behavior now documents the current managed-profile storage model and the same-session apply behavior after save. |
| Autodetect and Deep Scan | The async deep-scan flow now explains handle lifecycle, polling, result retrieval, and cleanup. |
| POP3 Message Handling | Getter, flag, save, and extraction pages now explain the loaded-message workflow more clearly. |
| Globals and Logging | The docs now clearly distinguish legacy `vuMail` registry behavior from the managed-profile model used once profiles exist. |

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)