
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuLoadProfileEx

## Purpose

Load a named managed profile into active runtime memory.

This is the named-profile load function for Pro and Back Office workflows.

## Export name

- `vuLoadProfileEx`

## Clarion prototype

**Prototype:** vuLoadProfileEx(*CSTRING ProfileName), LONG, PROC, PASCAL, RAW, NAME('vuLoadProfileEx')

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| ProfileName | *CSTRING | Managed profile name to load. | Example: `work-account`. Blank falls back to default. |

## Return value

| Value | Meaning |
|---|---|
| 1 | success |
| 0 | load failed |
| -9001 | vuMailKit licensing was not initialized. Register the template/global extension or call `vuMailKitInitialize(LicenseString)` at EXE startup. |
| -9002 | license string is invalid or initialization failed. |
| -9003 | current license tier does not allow this feature. |

## What it does

`vuLoadProfileEx()` performs an explicit managed-profile load of the named profile.

After a successful load:

- the current live runtime values are replaced by the saved values from the named profile
- the named profile becomes the active managed profile
- unsaved runtime changes from the current session are discarded

## Example (Clarion)

```clarion
ProfileName              CSTRING(80)
Result                   LONG

ProfileName = 'work-account'
Result = vuLoadProfileEx(ProfileName)
```

## Notes

- For licensing failures, `vuMailLastError()` is updated with text that identifies the condition as a vuMailKit licensing/setup or license-edition problem, not an SMTP, OAuth, Gmail, password, or mail-server authentication failure.

- This is an explicit replace operation.
- This function is gated to Pro and Back Office editions.
- If `ProfileName` is blank, the load falls back to `default`.
- Register the vuMailKit template/global extension or call `vuMailKitInitialize(LicenseString)` at EXE startup before using this function.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)