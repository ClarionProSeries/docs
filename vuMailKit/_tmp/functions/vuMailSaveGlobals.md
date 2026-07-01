
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailSaveGlobals()

## Clarion prototype

**Prototype:** vuMailSaveGlobals(), SIGNED, PROC, PASCAL, RAW, NAME('vuMailSaveGlobals')

## Description
This is the legacy vuMail function name for vuGlobalsSave().

Preferred function name:

- [vuGlobalsSave()](vuGlobalsSave.md)

This function is exported for backward compatibility and behaves identically to vuGlobalsSave().

## Example (Clarion)
```clarion
rc LONG

rc = vuMailSaveGlobals()
IF rc = 0
  MESSAGE('Unable to save legacy global settings: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)