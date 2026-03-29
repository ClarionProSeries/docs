---
title: "vuCleanupLegacyRegistry"
summary: "Safely remove legacy registry settings after managed profile migration has been verified."
function_name: "vuCleanupLegacyRegistry"
category: "Reference"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuCleanupLegacyRegistry

## Purpose

Safely remove legacy registry settings after managed profile migration has been verified.

## Export name

- `vuCleanupLegacyRegistry`

## Clarion prototype (Inside Global MAP)

- `vuCleanupLegacyRegistry(),LONG,PROC,PASCAL,RAW,NAME('vuCleanupLegacyRegistry')`

## Parameters

This function takes no parameters.

## Expected values and ranges

- This function should only be called after a managed profile has been saved and successfully reloaded.
- It is intentionally blocked until the DLL can confirm that managed migration is safe.

## Return value

- `1` = cleanup completed.
- `0` = cleanup refused or failed.

## Clarion example

```clarion
Result                   LONG

Result = vuCleanupLegacyRegistry()
```

## Notes

- Use this only after you have verified that managed profiles and managed secret loading work correctly for the account.
