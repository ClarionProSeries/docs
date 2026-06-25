
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSaveProfile

## Purpose

Save the current active runtime values into the managed profile named `default`.

This is the normal Basic-safe profile save function used by the vuMailKit Email Setup Wizard and by single-profile applications.

## Export name

- `vuSaveProfile`

## Clarion prototype

**Prototype:** vuSaveProfile(), LONG, PROC, PASCAL, RAW, NAME('vuSaveProfile')

## Parameters

- None.

## Return value

| Value | Meaning |
|---|---|
| 1 | success |
| 0 | save failed |
| -9001 | vuMailKit licensing was not initialized. Register the template/global extension or call `vuMailKitInitialize(LicenseString)` at EXE startup. |
| -9002 | license string is invalid or initialization failed. |
| -9003 | current license tier does not allow this feature. |

## What it does

`vuSaveProfile()` saves the current live runtime configuration into the internal managed profile key `default`.

That includes the current settings already loaded or set in memory, such as:

- SMTP server and port
- login and security settings
- POP settings where applicable
- profile metadata
- secrets through the managed secret store

After a successful save:

- the `default` managed profile becomes the active profile
- the current process immediately applies that saved managed profile
- a same-session send can use the saved profile without requiring an application restart

## Example (Clarion)

```clarion
Result                   LONG

Result = vuSaveProfile()
```

## Notes

- For licensing failures, `vuMailLastError()` is updated with text that identifies the condition as a vuMailKit licensing/setup or license-edition problem, not an SMTP, OAuth, Gmail, password, or mail-server authentication failure.

- This is the normal profile-save function for the Basic edition.
- It does not save to the old `vuMail` registry model once managed profiles are active.
- Use `vuSaveProfileEx(ProfileName)` only when you need named profiles and have the required license tier.
- In the normal vuMailKit Email Setup Wizard flow, this is the function that transitions the application into managed-profile-based persistence.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)