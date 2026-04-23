
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetMailLogLevel()

## Purpose

Gets the current verbosity level used by the standard vuMailKit mail log.

## Export name

- vuGetMailLogLevel

## Clarion prototype (Inside Global MAP)

- vuGetMailLogLevel(*LONG OutLogLevel),SIGNED,PROC,PASCAL,RAW,NAME('vuGetMailLogLevel')

## Parameters

- OutLogLevel (LONG) - Receives the current log verbosity level.
  - 0 = Normal
  - 1 = Trace

## Return value

- Returns 1 when the operation succeeds, otherwise 0. Use vuMailLastError() for more detail when needed.

## Notes

- This reports the current level for the standard mail log.
- If no value has been set yet, the default level is Normal.
- This function reports the level setting only. Actual logging still depends on a log file path being set with vuLogSetFile() or the legacy vuSetMailLog().