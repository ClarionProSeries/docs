
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuLoadProfile

## Purpose

Load the managed profile named `default` into active runtime memory.

This is the normal Basic-safe profile load function when you want to explicitly replace the current runtime settings with the saved default managed profile.

## Export name

- `vuLoadProfile`

## Clarion prototype

**Prototype:** vuLoadProfile(), LONG, PROC, PASCAL, RAW, NAME('vuLoadProfile')

## Parameters

- None.

## Return value

| Value | Meaning |
|---|---|
| 1 | success |
| 0 | load failed |

## What it does

`vuLoadProfile()` performs an explicit managed-profile load of `default`.

After a successful load:

- the current live runtime values are replaced by the saved values from `default`
- `default` becomes the active managed profile
- unsaved runtime changes from the current session are discarded

## Example (Clarion)

```clarion
Result                   LONG

Result = vuLoadProfile()
```

## Notes

- This is an explicit replace operation.
- In the normal Basic vuMailKit Email Setup Wizard flow, developers often do not need to call this manually because the saved active profile is applied automatically after profile save and on later application startup.
- Use `vuLoadProfileEx(ProfileName)` when you need to load a named profile in a licensed Pro or Back Office workflow.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)