---
title: "vuLoadProfileEx"
summary: "Load a named managed profile into active runtime memory. Pro and Back Office only."
function_name: "vuLoadProfileEx"
category: "Reference"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuLoadProfileEx

## Purpose

Load a named managed profile into active runtime memory.

This is the named-profile load function for Pro and Back Office workflows.

## Export name

- `vuLoadProfileEx`

## Clarion prototype (Inside Global MAP)

- `vuLoadProfileEx(*CSTRING ProfileName),LONG,PROC,Pascal,Raw,Name('vuLoadProfileEx')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| ProfileName | *CSTRING | Managed profile name to load. | Example: `work-account`. Blank falls back to `default`. |

## Return value

- `1` = success
- `0` = load failed
- `-401` = vuMailKit was not initialized
- `-402` = license is invalid or initialization failed
- `-403` = current license tier does not allow this feature

## What it does

`vuLoadProfileEx()` performs an explicit managed-profile load of the named profile.

After a successful load:

- the current live runtime values are replaced by the saved values from the named profile
- the named profile becomes the active managed profile
- unsaved runtime changes from the current session are discarded

## Clarion example

```clarion
ProfileName              CSTRING(80)
Result                   LONG

ProfileName = 'work-account'
Result = vuLoadProfileEx(ProfileName)
```

## Notes

- This is an explicit replace operation.
- This function is gated to Pro and Back Office editions.
- If `ProfileName` is blank, the load falls back to `default`.
- Call `vuMailKitInitialize(LicenseString)` at EXE startup before using this function.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
