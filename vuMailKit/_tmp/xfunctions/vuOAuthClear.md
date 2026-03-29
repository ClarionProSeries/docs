
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthClear()

```Prototype
vuOAuthClear(*CSTRING, *CSTRING, *CSTRING, LONG), LONG
```

## Purpose
Removes OAuth state/token information for the specified provider/account key.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier. |
| AccountKey | *CSTRING | Account key identifier. |
| OutText | *CSTRING | Output buffer receiving clear status text. |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `>= 0`: Result code from core OAuth clear operation.
- `-9`: Core unavailable or exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthClear(*CSTRING,*CSTRING,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuOAuthClear')
  END
END

rc         LONG
provider   CSTRING(64)
accountKey CSTRING(128)
outText    CSTRING(1024)
outLen     LONG

provider   = 'Microsoft'
accountKey = 'user@example.com'
outText    = ''
outLen     = SIZE(outText)

rc = vuOAuthClear(provider, accountKey, outText, outLen)
IF rc < 0
  MESSAGE('Clear failed: ' & rc & '| ' & outText)
END
```

## Notes
- Clear affects only the specified Provider/AccountKey context.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)