
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3GetAuthMode()

```Prototype
vuPOP3GetAuthMode(),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3GetAuthMode')
```

## Purpose
Returns the currently configured POP3 authentication mode.

## Parameters
This function has no parameters.

## Return value / error codes
- `>= 0`: Current POP3 auth mode numeric value.
- `< 0`: Auth mode not available due to runtime error.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3GetAuthMode(),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3GetAuthMode')
  END
END

mode LONG

mode = vuPOP3GetAuthMode()
MESSAGE('POP3 auth mode=' & mode)
```

## Notes
- Pair with `vuPOP3SetAuthMode()` to configure and verify POP3 auth behavior.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)