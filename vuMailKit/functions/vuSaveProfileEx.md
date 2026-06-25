---
title: "vuSaveProfileEx"
summary: "Save the current active runtime values into a named managed profile. Pro and Back Office only."
function_name: "vuSaveProfileEx"
category: "Reference"
last_updated: "2026-06-18"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSaveProfileEx

## Purpose

Save the current active runtime values into a named managed profile.

This is the named-profile save function for Pro and Back Office workflows.

## Export name

- `vuSaveProfileEx`

## Clarion prototype

**Prototype:** vuSaveProfileEx(*CSTRING ProfileName), LONG, PROC, PASCAL, RAW, NAME('vuSaveProfileEx')

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| ProfileName | *CSTRING | Managed profile name to save. | Example: `work-account`. Blank falls back to default. |

## Return value

| Value | Meaning |
|---|---|
| 1 | success |
| 0 | save failed |
| -9001 | vuMailKit licensing was not initialized. Register the template/global extension or call `vuMailKitInitialize(LicenseString)` at EXE startup. |
| -9002 | license string is invalid or initialization failed. |
| -9003 | current license tier does not allow this feature. |

## What it does

`vuSaveProfileEx()` saves the current live runtime configuration into the named managed profile.

After a successful save:

- the named profile becomes the active managed profile
- the current process immediately applies that saved managed profile
- later operations in the same session use that profile context

## Example (Clarion)

```clarion
ProfileName              CSTRING(80)
Result                   LONG

ProfileName = 'work-account'
Result = vuSaveProfileEx(ProfileName)
```

## Notes

- For licensing failures, `vuMailLastError()` is updated with text that identifies the condition as a vuMailKit licensing/setup or license-edition problem, not an SMTP, OAuth, Gmail, password, or mail-server authentication failure.

- This function is gated to Pro and Back Office editions.
- If `ProfileName` is blank, the save falls back to `default`.
- Secrets are stored through the managed secret store, not through the old `vuMail` registry model.
- Register the vuMailKit template/global extension or call `vuMailKitInitialize(LicenseString)` at EXE startup before using this function.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
