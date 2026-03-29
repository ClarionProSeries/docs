
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsSetCodePage()

```Prototype
vuGlobalsSetCodePage(*CSTRING xPage),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsSetCodePage')
```

## Purpose
Sets the in-memory `CodePage` setting used by vuMailKit.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| xPage | *CSTRING | Code page string to store (for example `UTF-8`). |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuGlobalsSetCodePage(*CSTRING xPage),SIGNED,PROC,PASCAL,RAW,NAME('vuGlobalsSetCodePage')
  END
END

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
- This updates runtime memory only; call `vuGlobalsSave()` to persist to registry.
- AuthMode/OAuth is not used by this function.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)