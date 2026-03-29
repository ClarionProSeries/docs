
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailGetGlobals()

## Description
This is the legacy `vuMail` function name for `vuGlobalsLoad()`.

Preferred function name:

- [vuGlobalsLoad()](vuGlobalsLoad.md)

It behaves the same way as `vuGlobalsLoad()` and loads saved configuration into the live runtime.

## Return value
- `1` - Load completed.

## Notes
- Before managed profiles exist, this normally reads the legacy `vuMail` registry settings.
- After managed profiles exist, normal behavior is to load the active managed profile instead.
- For the full behavior model, see [AboutGlobalMemory](AboutGlobalMemory.md).

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)