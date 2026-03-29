
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthBeginLogin()

```Prototype
vuOAuthBeginLogin(*CSTRING, *CSTRING, *CSTRING, *CSTRING, *CSTRING, *CSTRING, *CSTRING, LONG), LONG
```

## Purpose
Starts an OAuth sign-in flow for a provider/account pair and returns flow text (for example device verification info or callback instructions).

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier. |
| AccountKey | *CSTRING | Account key used to isolate token state. |
| ClientId | *CSTRING | OAuth client/application ID. |
| Tenant | *CSTRING | Tenant/authority string (provider-specific). |
| Scopes | *CSTRING | Space-delimited OAuth scopes. |
| FlowType | *CSTRING | Flow mode indicator (provider-specific). |
| OutText | *CSTRING | Output buffer receiving status/detail text from BeginLogin. |
| OutTextLen | LONG | Size of `OutText` buffer in bytes. |

## Return value / error codes
- `>= 0`: Result code from the OAuth core Begin operation.
- `-9`: Core unavailable or exception.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthBeginLogin(*CSTRING,*CSTRING,*CSTRING,*CSTRING,*CSTRING,*CSTRING,*CSTRING,LONG),LONG,PASCAL,RAW,NAME('vuOAuthBeginLogin')
  END
END

rc         LONG
provider   CSTRING(64)
accountKey CSTRING(128)
clientId   CSTRING(256)
tenant     CSTRING(128)
scopes     CSTRING(512)
flowType   CSTRING(32)
outText    CSTRING(2048)
outLen     LONG

provider   = 'Microsoft'
accountKey = 'user@example.com'
clientId   = '00000000-0000-0000-0000-000000000000'
tenant     = 'common'
scopes     = 'offline_access https://outlook.office.com/SMTP.Send'
flowType   = 'device'
outText    = ''
outLen     = SIZE(outText)

rc = vuOAuthBeginLogin(provider, accountKey, clientId, tenant, scopes, flowType, outText, outLen)
IF rc < 0
  MESSAGE('BeginLogin failed: ' & rc & '| ' & outText)
END
```

## Notes
- `OutText` is the handoff text used by later OAuth steps.
- Use the same `Provider` and `AccountKey` values on subsequent status/complete/clear/refresh calls.
- Alias export [vuOAuth_BeginLogin()](vuOAuth_BeginLogin.md) is available for compatibility.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)