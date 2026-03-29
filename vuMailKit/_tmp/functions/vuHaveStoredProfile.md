
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuHaveStoredProfile

## Purpose

Return whether any managed vuMailKit profile has already been saved for the current Windows user.

This helper is mainly useful for:

- demo app first-run logic
- offering the setup wizard when no secure profile exists yet
- diagnostics and support checks

## Export name

- `vuHaveStoredProfile`

## Clarion prototype (Inside Global MAP)

- `vuHaveStoredProfile(),LONG,PROC,PASCAL,RAW,NAME('vuHaveStoredProfile')`

## Parameters

- None.

## Return value

- `1` = at least one managed profile exists
- `0` = no managed profile exists, or the check failed

## What it does

`vuHaveStoredProfile()` checks the managed profile store under the current Windows user and reports whether any saved managed profile files are present.

This function only answers the managed-profile question.

It does **not** mean:

- that legacy vuMail registry settings do or do not exist
- that startup code has or has not already populated runtime values manually
- that a send is guaranteed to succeed

That distinction matters for migration scenarios. An older vuMail application may still have working legacy settings even when no managed profile exists yet.

## Clarion example

```clarion
HaveProfile            LONG

HaveProfile = vuHaveStoredProfile()
IF (HaveProfile = 0)
  MESSAGE('No secure vuMailKit profile was found. You may want to run the setup wizard now.')
END
```

## Notes

- This function is best used as a gentle setup hint, not as a hard requirement.
- For migrated legacy applications, `0` may simply mean the developer has not moved the application to managed profiles yet.
- In a demo application, a result of `0` is a good time to offer the setup wizard.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)