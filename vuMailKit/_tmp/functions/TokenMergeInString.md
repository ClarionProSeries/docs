
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# TokenMergeInString()

## Clarion prototype

**Prototype:** TokenMergeInString(*CSTRING InSourceText, *CSTRING OutTargetText, LONG InOutTargetTextLen, *CSTRING InToken, *CSTRING InReplacement, LONG InFlags), SIGNED, PROC, PASCAL, RAW, NAME('TokenMergeInString')

## Purpose
Replaces token text inside a source string and writes the merged result to a caller-owned output buffer.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InSourceText | *CSTRING | Source text to inspect. |
| OutTargetText | *CSTRING | Target buffer receiving the merged result. |
| InOutTargetTextLen | LONG | Size of OutTargetText in bytes. |
| InToken | *CSTRING | Full token text to replace, such as [[FirstName]]. |
| InReplacement | *CSTRING | Replacement value to insert. |
| InFlags | LONG | Merge option flags. 0=Replace all, case-sensitive, 1=First only, 2=Ignore case, 3=First only and ignore case. |

## Return value / error codes
- Positive value: number of replacements performed.
- 0: No matching token was found.
- -1: Token text is blank.
- -2: Output buffer pointer or length is invalid.
- -4: Runtime failure.

## Example (Clarion)
```clarion
rc          LONG
srcText     CSTRING(1024)
outText     CSTRING(1024)
tokenText   CSTRING(80)
valueText   CSTRING(256)
flags       LONG

srcText   = 'Hello [[FirstName]], your code is [[Code]].'
outText   = ''
tokenText = '[[FirstName]]'
valueText = 'Charles'
flags     = 0

rc = TokenMergeInString(srcText, outText, SIZE(outText), tokenText, valueText, flags)
MESSAGE('TokenMergeInString rc=' & rc & ' text=' & outText)
```

## Notes
- The function does not force a token format, but [[TokenName]] is strongly recommended.
- By default, the function replaces all matching tokens.
- Set flag bit 1 to replace only the first match.
- Set flag bit 2 to ignore case while matching the full token text.
- InSourceText and OutTargetText may point to the same CSTRING buffer for in-place replacement.
- The target buffer must be large enough to hold the merged result.
- If the target buffer is too small, the merged text will be truncated.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)