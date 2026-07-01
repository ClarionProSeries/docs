
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsSetCodePage()

## Clarion prototype

**Prototype:** vuGlobalsSetCodePage(*CSTRING xPage), SIGNED, PROC, PASCAL, RAW, NAME('vuGlobalsSetCodePage')

## Purpose
Sets the in-memory CodePage setting used by vuMailKit.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| xPage | *CSTRING | Code page string to store (for example UTF-8). |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Success. |

## Example (Clarion)
```clarion
rc       LONG
cpValue  CSTRING(32)

cpValue = 'UTF-8'
rc = vuGlobalsSetCodePage(cpValue)
IF rc <> 1
  MESSAGE('vuGlobalsSetCodePage failed: ' & rc)
END
```

## Notes
- Legacy alias: [vuSetCodePage()](vuSetCodePage.md).
- This updates runtime memory only; call vuGlobalsSave() to persist to registry.
- AuthMode/OAuth is not used by this function.
- This is a legacy compatibility setting. The current SMTP send path emits modern MIME text parts as UTF-8. External body files containing accented or international characters should be saved as UTF-8.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)