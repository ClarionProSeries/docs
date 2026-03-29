---
title: "vuDiagnosticsClearLogs"
summary: "Delete the current diagnostic and protocol log files."
description: "Delete the current diagnostic and protocol log files. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)"
keywords: ["vuMailKit","function","vudiagnosticsclearlogs"]
function_name: "vuDiagnosticsClearLogs"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuDiagnosticsClearLogs()

## Purpose

Deletes the current diagnostics log file and SMTP protocol log file when they exist.

## Export name

- `vuDiagnosticsClearLogs`

## Clarion prototype (Inside Global MAP)

- `vuDiagnosticsClearLogs(),SIGNED,PROC,PASCAL,RAW,NAME('vuDiagnosticsClearLogs')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- This is intended for troubleshooting so each test starts with clean log files.
- It attempts to delete the diagnostics log, protocol log, and the current legacy mail log file path when present.
