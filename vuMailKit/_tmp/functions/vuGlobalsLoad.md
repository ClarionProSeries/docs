
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsLoad()

## Purpose
Loads persisted vuMailKit global settings from registry storage into current runtime memory.

## Parameters
- None.

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsLoad(),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsLoad')
  END
END

rc LONG

rc = vuGlobalsLoad()
IF rc <> 1
  MESSAGE('Unexpected rc from vuGlobalsLoad: ' & rc)
END
```

## Notes
- Legacy alias: [vuMailGetGlobals()](vuMailGetGlobals.md).
- Reads values from `HKCU\SOFTWARE\vuPrograms\vuMail`.
- This function refreshes runtime configuration; call it again if registry values were changed outside the current process.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)