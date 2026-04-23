---
title: "vuSetMailLogLevel"
summary: "Sets the standard mail log verbosity level."
description: "Sets the standard mail log verbosity level. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "function", "vusetmailloglevel"]
function_name: "vuSetMailLogLevel"
category: "Logging"
version_added: "1.0"
last_updated: "2026-04-04"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetMailLogLevel()

## Purpose

Sets the verbosity level used by the standard vuMailKit mail log.

## Export name

- vuSetMailLogLevel

## Clarion prototype (Inside Global MAP)

- vuSetMailLogLevel(LONG InLogLevel),SIGNED,PROC,PASCAL,RAW,NAME('vuSetMailLogLevel')

## Parameters

- InLogLevel (LONG) - Log verbosity level.
  - 0 = Normal
  - 1 = Trace

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use vuMailLastError() for more detail when needed.

## Notes

- This controls the standard mail log written through the current log file path.
- Logging still depends on a log file path being set with vuLogSetFile() or the legacy vuSetMailLog().
- Normal is the default level.
- Trace adds deeper internal transport and setup details to the same standard log file.
