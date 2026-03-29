
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthCompleteLogin()

```Prototype
vuOAuthCompleteLogin(*CSTRING, *CSTRING, *CSTRING, *CSTRING, LONG), LONG
```

## Purpose
Finalizes OAuth sign-in using callback data or verification result text and stores token state for later SMTP/POP3 use.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| CallbackData | *CSTRING | Callback payload or verification completion text. |
| OutText | *CSTRING | Output buffer receiving completion status text. |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `>= 0`: Result code from the OAuth core Complete operation.
- `-9`: Core unavailable or exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthCompleteLogin(*CSTRING,*CSTRING,*CSTRING,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuOAuthCompleteLogin')
  END
END

rc           LONG
provider     CSTRING(64)
accountKey   CSTRING(128)
callbackData CSTRING(2048)
outText      CSTRING(2048)
outLen       LONG

provider     = 'Microsoft'
accountKey   = 'user@example.com'
callbackData = 'code=...&state=...'
outText      = ''
outLen       = SIZE(outText)

rc = vuOAuthCompleteLogin(provider, accountKey, callbackData, outText, outLen)
IF rc < 0
  MESSAGE('CompleteLogin failed: ' & rc & '| ' & outText)
END
```

## Notes
- `Provider` and `AccountKey` must match the values used for BeginLogin state.
- This function returns detailed diagnostic text through `OutText`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)