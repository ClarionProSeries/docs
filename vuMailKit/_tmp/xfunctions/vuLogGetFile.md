
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuLogGetFile()

## Purpose
Returns the current log file path from live runtime memory.

This is the preferred name for the old `vuGetMailLog()` alias.

## Parameters
- None.

## Return value
Returns the current log file path as a text result.

## What it returns
This function returns the current in-memory value, not a file-system scan and not a historical log location search.

If your code changed the value earlier in the session, this function returns the updated runtime value.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuLogGetFile(),CSTRING,PASCAL,RAW,NAME('vuLogGetFile')
  END
END

MESSAGE('Current log file: ' & vuLogGetFile())
```

## Notes
- Preferred name: `vuLogGetFile()`.
- Legacy alias: [vuGetMailLog()](vuGetMailLog.md).
- Use [vuLogSetFile()](vuLogSetFile.md) to change the runtime value.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)