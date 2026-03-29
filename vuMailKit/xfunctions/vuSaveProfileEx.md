---
title: "vuSaveProfileEx"
summary: "Save the current active runtime values into a named managed profile. Pro and Back Office only."
function_name: "vuSaveProfileEx"
category: "Reference"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSaveProfileEx

## Purpose

Save the current active runtime values into a named managed profile.

This is the named-profile save function for Pro and Back Office workflows.

## Export name

- `vuSaveProfileEx`

## Clarion prototype (Inside Global MAP)

- `vuSaveProfileEx(*CSTRING ProfileName),LONG,PROC,Pascal,Raw,Name('vuSaveProfileEx')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| ProfileName | *CSTRING | Managed profile name to save. | Example: `work-account`. Blank falls back to `default`. |

## Return value

- `1` = success
- `0` = save failed
- `-401` = vuMailKit was not initialized
- `-402` = license is invalid or initialization failed
- `-403` = current license tier does not allow this feature

## What it does

`vuSaveProfileEx()` saves the current live runtime configuration into the named managed profile.

After a successful save:

- the named profile becomes the active managed profile
- the current process immediately applies that saved managed profile
- later operations in the same session use that profile context

## Clarion example

```clarion
ProfileName              CSTRING(80)
Result                   LONG

ProfileName = 'work-account'
Result = vuSaveProfileEx(ProfileName)
```

## Notes

- This function is gated to Pro and Back Office editions.
- If `ProfileName` is blank, the save falls back to `default`.
- Secrets are stored through the managed secret store, not through the old `vuMail` registry model.
- Call `vuMailKitInitialize(LicenseString)` at EXE startup before using this function.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
