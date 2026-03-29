
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthGetProvider()

```Prototype
vuOAuthGetProvider(*CSTRING OutProvider),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthGetProvider')
```

## Purpose
Returns the currently stored default OAuth provider string.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| OutProvider | *CSTRING | Output buffer that receives the provider name. |

## Return value / error codes
- `1`: Success.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthGetProvider(*CSTRING OutProvider),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthGetProvider')
  END
END

rc           LONG
outProvider  CSTRING(64)

outProvider = ''
rc = vuOAuthGetProvider(outProvider)
IF rc = 1
  MESSAGE('Provider=' & outProvider)
ELSE
  MESSAGE('vuOAuthGetProvider failed: ' & rc)
END
```

## Notes
- The output buffer should be sized for at least 64 bytes to match runtime usage.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)