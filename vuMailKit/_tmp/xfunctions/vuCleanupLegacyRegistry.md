
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuCleanupLegacyRegistry()

## Purpose
Safely removes the old legacy `vuMail` registry settings after managed profile migration has been verified.

## Export name
- `vuCleanupLegacyRegistry`

## Clarion prototype
- `vuCleanupLegacyRegistry(),LONG,PROC,Pascal,Raw,Name('vuCleanupLegacyRegistry')`

## Parameters
This function takes no parameters.

## Return value
- `1` = cleanup completed.
- `0` = cleanup refused or failed.

## Notes
- Use this only after a managed profile has been created, saved, and successfully reloaded.
- The purpose is to help you remove old registry-based configuration only after you know the managed-profile path is working.
- This function is intentionally conservative. It should not be treated as a routine setup step.

## Clarion example
```clarion
Result   LONG

Result = vuCleanupLegacyRegistry()
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)