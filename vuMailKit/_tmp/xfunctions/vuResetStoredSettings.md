
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuResetStoredSettings()

```Prototype
vuResetStoredSettings(),SIGNED,PROC,Pascal,Raw,Name('vuResetStoredSettings')
```

## Description

Clears persisted vuMail and vuMailKit state so the machine returns to a clean stored-settings state.

This is the nuclear reset option for troubleshooting, repeated harness runs, and clean-room testing.

## Returns

- `1` = reset completed
- `0` = reset failed

When the function returns `0`, call `vuMailLastError()` for the failure text.

## What it clears

The current implementation removes stored data such as:

- the legacy `vuMail` registry settings area
- the `HKCU\SOFTWARE\vuPrograms\vuMailKit\Profiles` registry area
- the Local AppData `vuMailKit` storage tree that holds profiles, secrets, tokens, and related state
- pending OAuth files and saved OAuth settings files

## Notes

- This clears persisted state only.
- It does not automatically rewrite values already loaded into the current process memory.
- In practice, after calling this function you will usually want to restart the application or reinitialize the DLL before continuing.
- Use this carefully. It is intended for troubleshooting and test reset scenarios, not for normal end-user workflows.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)