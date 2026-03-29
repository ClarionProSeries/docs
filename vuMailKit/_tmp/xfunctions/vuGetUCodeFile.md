
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGetUCodeFile()

```Prototype
vuGetUCodeFile(*CSTRING xIgnored), LONG
```

## Purpose
Returns the current UCode file path using the original `vuMail` compatibility behavior.

## Parameters
- `xIgnored` (*CSTRING): ignored legacy parameter retained only for call compatibility.

## Return value
- Returns text using the original legacy text-return style.
- The returned text may be empty if no UCode path is currently set.

## Notes
- This is a legacy compatibility exception.
- It is retained so older code can continue to call it without redesign.
- Newer APIs should prefer caller-owned output buffers rather than the old implicit text-return pattern.

## Clarion example
```clarion
Ignored   CSTRING(1)

Ignored = ''
MESSAGE('UCode file: ' & vuGetUCodeFile(Ignored))
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)