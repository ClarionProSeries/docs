
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailKitGetLicenseInfo

## Purpose

Return a human-readable summary of the current vuMailKit license state into a caller-supplied text buffer.

This is mainly a diagnostics and support function. It is useful in a test harness, About box, setup screen, or support dialog when you want to confirm what the DLL believes about the current license.

## Export name

- vuMailKitGetLicenseInfo

## Clarion prototype

**Prototype:** vuMailKitGetLicenseInfo(*CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuMailKitGetLicenseInfo')

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| OutText | *CSTRING | Receives the license status text. | Pass a writable text buffer. |
| OutTextLen | LONG | Size of OutText in bytes. | Normally SIZE(OutText). |

## Return value

| Value | Meaning |
|---|---|
| 0 | no valid tier is active |
| 1 | Basic |
| 2 | Pro |
| 3 | Back Office |
- negative value = function failed

## What the text includes

The returned text can include items such as:

- whether initialization has been attempted
- whether the license is valid
- the last initialization result, including -9002 for invalid license initialization
- tier level
- tier token
- DEMO flag
- registered name
- license number

Example output:

- Initialized=1; Valid=1; Attempted=1; LastInitCode=0; LastInitReason=Initialized; TierLevel=1; Tier=basic; Demo=0; Name=Charles; Number=16123

## Example (Clarion)

```clarion
OutText                  CSTRING(512)
Result                   SIGNED

CLEAR(OutText)
Result = vuMailKitGetLicenseInfo(OutText, SIZE(OutText))
```

## Notes

- Current licensing/setup failures use -9001, -9002, and -9003 on gated functions. This diagnostic text can help confirm whether initialization was skipped, attempted, or successful.
- Call vuMailKitInitialize() first if you want this function to reflect the intended active license.
- This function is useful when testing normal licenses, DEMO licenses, and invalid-license behavior.
- The text is meant for display and diagnostics. Do not write program logic that depends on parsing the exact wording.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)