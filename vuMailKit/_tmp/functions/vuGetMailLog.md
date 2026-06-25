
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailLog()

## Clarion prototype

**Prototype:** vuGetMailLog(*CSTRING OutLogFile), SIGNED, PROC, PASCAL, RAW, NAME('vuGetMailLog')

## Description
This is the legacy vuMail function name for `vuLogGetFile()`.

Preferred function name:

- [vuLogGetFile()](vuLogGetFile.md)

This function is exported for backward compatibility and behaves identically to `vuLogGetFile()`.

## Example (Clarion)
```clarion
rc      LONG
logFile CSTRING(260)

logFile = ''
rc = vuGetMailLog(logFile)

IF rc = 1
  MESSAGE('Current mail log: ' & CLIP(logFile))
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)