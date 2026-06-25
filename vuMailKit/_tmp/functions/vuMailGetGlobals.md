
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailGetGlobals()

## Clarion prototype

**Prototype:** vuMailGetGlobals(), SIGNED, PROC, PASCAL, RAW, NAME('vuMailGetGlobals')

## Description
This is the legacy vuMail function name for `vuGlobalsLoad()`.

Preferred function name:

- [vuGlobalsLoad()](vuGlobalsLoad.md)

This function is exported for backward compatibility and behaves identically to `vuGlobalsLoad()`.

## Example (Clarion)
```clarion
rc LONG

rc = vuMailGetGlobals()
IF rc = 0
  MESSAGE('Unable to load legacy global settings: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)