---
title: "vuSetMailLogLevel"
summary: "Legacy alias for vuSetDiagnosticsLevel(); sets diagnostics verbosity."
description: "Legacy-compatible alias for vuSetDiagnosticsLevel(). This controls diagnostics verbosity only, not the sent-mail CSV log."
keywords: ["vuMailKit", "vuMail", "vusetmailloglevel", "vusetdiagnosticslevel", "diagnostics", "trace"]
function_name: "vuSetMailLogLevel"
category: "Diagnostics"
version_added: "Legacy"
last_updated: "2026-06-25"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailLogLevel()

## Description

vuSetMailLogLevel() is a legacy-compatible alias for the preferred function name:

- [vuSetDiagnosticsLevel()](vuSetDiagnosticsLevel.md)

The legacy name remains exported and supported so existing applications continue to compile and run.

New code should use vuSetDiagnosticsLevel().

## Clarion prototype

**Prototype:** vuSetMailLogLevel(LONG InLogLevel), SIGNED, PROC, PASCAL, RAW, NAME('vuSetMailLogLevel')

## Important logging separation

Despite the legacy name, vuSetMailLogLevel() controls diagnostics verbosity only.

It does not enable diagnostics logging, select the diagnostics log file, enable the sent-mail CSV/activity log, or select the CSV log file.

Use vuSetMailLog() or vuLogSetFile() to select the sent-mail CSV/activity log file.

Use vuDiagnosticsSetFile(), vuSetDiagnosticsLevel(), and vuDiagnosticsEnable() for diagnostics.

## Levels

| Value | Meaning |
|---:|---|
| 0 | Normal diagnostics. |
| 1 | Trace diagnostics. |

## Example (Clarion)

```clarion
Result SIGNED

Result = vuSetMailLogLevel(1)   ! Legacy alias for vuSetDiagnosticsLevel(1)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
