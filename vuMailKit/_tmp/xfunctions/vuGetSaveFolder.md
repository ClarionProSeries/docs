
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGetSaveFolder()

```Prototype
vuGetSaveFolder(*CSTRING), LONG
```

## Description
This is the legacy `vuMail` function name for retrieving the configured email-save folder.

Preferred function name:

- [vuGlobalsGetEmailFolder()](vuGlobalsGetEmailFolder.md)

This function is exported for backward compatibility and behaves identically to `vuGlobalsGetEmailFolder()`.

## What it returns
The folder returned is the current configured email/attachment save folder from the live runtime configuration.

In modern `vuMailKit` usage, that runtime value may have come from:

- manual setter calls
- legacy global load behavior
- the active managed profile

## Notes
- Use `vuGlobalsGetEmailFolder()` for new development.
- This function does not itself save or create the folder. It only retrieves the current configured value.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)