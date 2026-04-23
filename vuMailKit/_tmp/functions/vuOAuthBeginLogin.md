[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthBeginLogin()

```Prototype
vuOAuthBeginLogin(*CSTRING Provider,*CSTRING AccountKey,*CSTRING ClientId,*CSTRING Tenant,*CSTRING Scopes,*CSTRING FlowType,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthBeginLogin')
```

## Purpose

Starts an OAuth login flow for the specified provider and account key.

This call initializes the provider-specific login state, chooses the appropriate login flow, and writes status or detail text into OutText.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider name, such as google or microsoft. |
| AccountKey | *CSTRING | Account key used to isolate stored OAuth state for this login. |
| ClientId | *CSTRING | OAuth client or application ID. |
| Tenant | *CSTRING | Tenant or authority string when the provider requires it. |
| Scopes | *CSTRING | Space-delimited OAuth scopes to request. |
| FlowType | *CSTRING | Flow mode string used by the provider-specific login implementation. |
| OutText | *CSTRING | Output buffer receiving status or detail text from the BeginLogin call. |
| OutTextLen | LONG | Size of the OutText buffer in bytes. |

## Return value / error codes

- 1: BeginLogin completed successfully.
- 0: BeginLogin did not complete successfully.
- -9: Exception while starting the login flow.

## Notes

- The actual flow used depends on the provider and the current runtime implementation.
- OutText is intended for human-readable status or detail text.
- After a successful call, use the other OAuth helper functions that fit the selected flow, such as:
  - vuOAuthGetDeviceInfo()
  - vuOAuthLaunchUserVerification()
  - vuOAuthLaunchAuthorizeUrl()
  - vuOAuthCompleteLogin()

## Example (Clarion)

```clarion
MAP
  MODULE('vuMailKit.dll')
    vuOAuthBeginLogin(*CSTRING Provider,*CSTRING AccountKey,*CSTRING ClientId,*CSTRING Tenant,*CSTRING Scopes,*CSTRING FlowType,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthBeginLogin')
  END
END

provider    CSTRING(32)
accountKey  CSTRING(128)
clientId    CSTRING(256)
tenant      CSTRING(128)
scopes      CSTRING(512)
flowType    CSTRING(64)
outText     CSTRING(1024)
outLen      LONG
rc          LONG

provider   = 'microsoft'
accountKey = 'user@example.com'
clientId   = 'your-client-id'
tenant     = 'common'
scopes     = 'offline_access https://graph.microsoft.com/Mail.Send'
flowType   = ''
outText    = ''
outLen     = SIZE(outText)

rc = vuOAuthBeginLogin(provider, accountKey, clientId, tenant, scopes, flowType, outText, outLen)
MESSAGE('rc=' & rc & ' text=' & outText)
```

## See also

- vuOAuthDetectProviderFromEmail()
- vuOAuthGetDeviceInfo()
- vuOAuthLaunchUserVerification()
- vuOAuthLaunchAuthorizeUrl()
- vuOAuthCompleteLogin()
- vuOAuthStatus()

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)