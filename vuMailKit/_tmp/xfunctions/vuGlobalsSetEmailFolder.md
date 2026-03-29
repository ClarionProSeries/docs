
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGlobalsSetEmailFolder()

## Purpose
Sets the current runtime email folder value used by related save/export operations.

## Parameters
- `xFolder` - Folder path to store in the live runtime.

## Return value
- `1` - Success.

## Notes
- This updates the current in-memory value.
- If you want it persisted, call `vuGlobalsSave()` afterward.
- Use [vuGlobalsGetEmailFolder()](vuGlobalsGetEmailFolder.md) to read the current runtime value.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)