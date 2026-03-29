---
title: "vuDiagnosticsSetFile"
summary: "Set the diagnostics log file path."
description: "Set the diagnostics log file path. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)"
keywords: ["vuMailKit","function","vudiagnosticssetfile"]
function_name: "vuDiagnosticsSetFile"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuDiagnosticsSetFile()

## Purpose

Sets the diagnostic log file path used by vuDiagnosticsEnable() and by protocol logging.

## Export name

- `vuDiagnosticsSetFile`

## Clarion prototype (Inside Global MAP)

- `vuDiagnosticsSetFile(*CSTRING xFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuDiagnosticsSetFile')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- Pass the address of a `CSTRING` buffer containing the full path.
- Setting the file path does not automatically enable diagnostics.
