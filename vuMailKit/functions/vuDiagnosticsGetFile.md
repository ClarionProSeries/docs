---
title: "vuDiagnosticsGetFile"
summary: "Get the diagnostics log file path."
description: "Get the diagnostics log file path. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)"
keywords: ["vuMailKit","function","vudiagnosticsgetfile"]
function_name: "vuDiagnosticsGetFile"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuDiagnosticsGetFile()

## Purpose

Gets the currently configured diagnostics log file path.

## Export name

- `vuDiagnosticsGetFile`

## Clarion prototype (Inside Global MAP)

- `vuDiagnosticsGetFile(*CSTRING xFileName),SIGNED,PROC,PASCAL,RAW,NAME('vuDiagnosticsGetFile')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- Pass the address of a writable `CSTRING` buffer.
- If no diagnostics file has been configured yet, an empty string is returned.
