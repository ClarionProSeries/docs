
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthRefresh()

```Prototype
vuOAuthRefresh(*CSTRING, *CSTRING, *CSTRING, LONG), LONG
```

## Purpose
Refreshes OAuth access token state for the specified provider/account pair.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier. |
| AccountKey | *CSTRING | Account key identifier. |
| OutText | *CSTRING | Output buffer receiving refresh status text. |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `>= 0`: Result code from core OAuth refresh operation.
- `-9`: Core unavailable or exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthRefresh(*CSTRING,*CSTRING,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuOAuthRefresh')
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

rc = vuOAuthRefresh(provider, accountKey, outText, outLen)
IF rc < 0
  MESSAGE('Refresh failed: ' & rc & '| ' & outText)
END
```

## Notes
- Refresh semantics depend on provider token policy and stored refresh token availability.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)