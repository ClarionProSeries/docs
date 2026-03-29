
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthLaunchUserVerification()

```Prototype
vuOAuthLaunchUserVerification(*CSTRING, *CSTRING, LONG, *CSTRING, LONG), LONG
```

## Purpose
Uses BeginLogin state to open the user verification URL in a browser and optionally copy a device code to the clipboard.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| CopyCodeToClipboard | LONG | `0` = do not copy, non-zero = copy code when available. |
| OutText | *CSTRING | Output buffer receiving launch metadata and diagnostics. |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `1`: Browser launch succeeded (clipboard warning may still be included in OutText).
- `-8`: Browser launch failed.
- `-9`: BeginLogin state missing, URL missing, or exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthLaunchUserVerification(*CSTRING,*CSTRING,LONG,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuOAuthLaunchUserVerification')
  END
END

rc         LONG
provider   CSTRING(64)
accountKey CSTRING(128)
copyCode   LONG
outText    CSTRING(2048)
outLen     LONG

provider   = 'Microsoft'
accountKey = 'user@example.com'
copyCode   = 1
outText    = ''
outLen     = SIZE(outText)

rc = vuOAuthLaunchUserVerification(provider, accountKey, copyCode, outText, outLen)
IF rc <> 1
  MESSAGE('LaunchUserVerification failed: ' & rc & '| ' & outText)
END
```

## Notes
- Call this after a successful BeginLogin for the same `Provider` + `AccountKey`.
- This function attempts desktop browser automation and can fail in locked-down/server environments.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)