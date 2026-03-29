
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuNoPasswordInRegistry()

## Purpose
Controls whether the SMTP password is omitted when legacy global settings are saved.

## Parameters
- `xFlag` - Use `1` to suppress password persistence in the legacy registry model. Use `0` to allow normal legacy save behavior.

## Return value
- `1` - Success.

## What this affects
This setting is mainly relevant to the old `vuMail` registry-backed global save behavior.

When enabled, later calls to `vuGlobalsSave()` or `vuMailSaveGlobals()` can omit the SMTP password from legacy registry persistence.

## Managed profile note
Once managed profiles are in normal use, secrets are handled through the managed profile and secret-storage system rather than the old `vuMail` registry model.

That means this function is most useful for:

- older legacy-compatible applications
- manual global save workflows
- developers who still rely on registry-backed globals before a managed profile exists

## Example (Clarion)
```clarion
RC = vuNoPasswordInRegistry(1)
IF RC <> 1
  MESSAGE('Unexpected rc from vuNoPasswordInRegistry: ' & RC)
END
```

## Notes
- This changes the live runtime behavior for later legacy global saves.
- For the bigger picture, see [AboutGlobalMemory](AboutGlobalMemory.md).

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)