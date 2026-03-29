---
title: "vuSaveProfile"
summary: "Save the current active runtime values into the managed profile named default."
function_name: "vuSaveProfile"
category: "Reference"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSaveProfile

## Purpose

Save the current active runtime values into the managed profile named `default`.

This is the normal Basic-safe profile save function used by the setup wizard and by single-profile applications.

## Export name

- `vuSaveProfile`

## Clarion prototype (Inside Global MAP)

- `vuSaveProfile(),LONG,PROC,Pascal,Raw,Name('vuSaveProfile')`

## Parameters

- None.

## Return value

- `1` = success
- `0` = save failed
- `-401` = vuMailKit was not initialized
- `-402` = license is invalid or initialization failed
- `-403` = current license tier does not allow this feature

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

## Clarion example

```clarion
Result                   LONG

Result = vuSaveProfile()
```

## Notes

- This is the normal profile-save function for the Basic edition.
- It does not save to the old `vuMail` registry model once managed profiles are active.
- Use `vuSaveProfileEx(ProfileName)` only when you need named profiles and have the required license tier.
- In the normal wizard flow, this is the function that transitions the application into managed-profile-based persistence.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
