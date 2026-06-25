
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetSaveFolder()

## Clarion prototype

**Prototype:** vuGetSaveFolder(*CSTRING OutFolder), SIGNED, PROC, PASCAL, RAW, NAME('vuGetSaveFolder')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuGlobalsGetEmailFolder()](vuGlobalsGetEmailFolder.md)

This function is exported for backward compatibility and behaves identically to `vuGlobalsGetEmailFolder()`. It copies the current runtime EmailFolder value into the caller-provided output buffer.

## Example (Clarion)
```clarion
rc     LONG
folder CSTRING(260)

folder = ''
rc = vuGetSaveFolder(folder)

IF rc = 1
  MESSAGE('Current save folder: ' & CLIP(folder))
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)