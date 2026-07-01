
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# TokenMergeInFile()

## Clarion prototype

**Prototype:** TokenMergeInFile(*CSTRING InSourceFile, *CSTRING InTargetFile, *CSTRING InToken, *CSTRING InReplacement, LONG InFlags), SIGNED, PROC, PASCAL, RAW, NAME('TokenMergeInFile')

## Purpose
Reads text from a source file, replaces token text, and writes the merged result to a target file.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InSourceFile | *CSTRING | Source text or HTML file to read. |
| InTargetFile | *CSTRING | Target file to write. Use a different file when you want to preserve the source template. |
| InToken | *CSTRING | Full token text to replace, such as [[FirstName]]. |
| InReplacement | *CSTRING | Replacement value to insert. |
| InFlags | LONG | Merge option flags. 0=Replace all, case-sensitive, 1=First only, 2=Ignore case, 3=First only and ignore case. |

## Return value / error codes
- Positive value: number of replacements performed.
- 0: No matching token was found. The target file is still written.
- -1: Token text is blank.
- -2: Source or target file name is blank.
- -3: Source file not found.
- -4: Read/write or runtime failure.

## Example (Clarion)
```clarion
rc          LONG
srcFile     CSTRING(260)
outFile     CSTRING(260)
tokenText   CSTRING(80)
valueText   CSTRING(256)
flags       LONG

srcFile   = CLIP(PATH()) & '\Template.html'
outFile   = CLIP(PATH()) & '\Merged.html'
tokenText = '[[FirstName]]'
valueText = 'Charles'
flags     = 0

rc = TokenMergeInFile(srcFile, outFile, tokenText, valueText, flags)
MESSAGE('TokenMergeInFile rc=' & rc)
```

## Notes
- The function does not force a token format, but [[TokenName]] is strongly recommended.
- By default, the function replaces all matching tokens.
- Set flag bit 1 to replace only the first match.
- Set flag bit 2 to ignore case while matching the full token text.
- Use TokenMergeInFile when the replacement value is already in a string.
- Use [TokenMergeFileIntoFile](TokenMergeFileIntoFile.md) when the replacement value should come from another file.
- The function reads common UTF-8 files safely and falls back to Windows ANSI when needed.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)