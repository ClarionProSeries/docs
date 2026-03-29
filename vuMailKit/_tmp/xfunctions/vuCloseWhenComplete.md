
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuCloseWhenComplete(closeWhenComplete)

## Purpose
Sets the legacy runtime flag that indicates whether the client should close when a send completes.

## Parameters
- `closeWhenComplete` (LONG): Flag value written into runtime configuration.

## Return value / error codes
- `1`: Value stored successfully.
- `0`: Failure. `vuMailLastError()` is set with text beginning `vuCloseWhenComplete failed:`.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuCloseWhenComplete(LONG closeWhenComplete),LONG,PASCAL,RAW,NAME('vuCloseWhenComplete')
  END
END

rc LONG
rc = vuCloseWhenComplete(1)
IF rc = 0
  MESSAGE('Could not set CloseWhenComplete: ' & vuMailLastError())
END
```

## Notes
- This function only sets an internal compatibility flag.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuCloseWhenComplete`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)