
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuResetSimpleHTML()

## Clarion prototype

**Prototype:** vuResetSimpleHTML(), SIGNED, PROC, PASCAL, RAW, NAME('vuResetSimpleHTML')

Resets all Simple HTML runtime settings back to their defaults.

## Default state after reset

- Simple HTML off
- header image cleared
- footer image cleared
- NormalizeBody on

## Example (Clarion)
```clarion
rc LONG

rc = vuResetSimpleHTML()

IF rc = 1
  MESSAGE('Simple HTML settings have been reset.')
END
```

## Notes

Use this when you want to be certain that a later send does not inherit an earlier Simple HTML configuration.


This is especially important when you temporarily enable Simple HTML mode for a branded message and then later send a different message that should not reuse the same header image, footer image, or body-normalization setting.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)