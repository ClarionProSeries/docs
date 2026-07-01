
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuNoPasswordInRegistry()

## Clarion prototype

**Prototype:** vuNoPasswordInRegistry(LONG InValue), LONG, PROC, PASCAL, RAW, NAME('vuNoPasswordInRegistry')

## Description
This is the legacy vuMail function name for vuGlobalsSetNoPasswordInRegistry().

Preferred function name:

- [vuGlobalsSetNoPasswordInRegistry()](vuGlobalsSetNoPasswordInRegistry.md)

This function is exported for backward compatibility and behaves identically to vuGlobalsSetNoPasswordInRegistry().

## Example (Clarion)
```clarion
rc LONG

! Legacy name. Prefer vuGlobalsSetNoPasswordInRegistry for new work.
rc = vuNoPasswordInRegistry(1)

IF rc = 0
  MESSAGE('Password persistence setting was not accepted.')
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)