
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthGetDeviceInfo()

```Prototype
vuOAuthGetDeviceInfo(*CSTRING Provider,*CSTRING AccountKey,*CSTRING OutUrl,LONG OutUrlLen,*CSTRING OutCode,LONG OutCodeLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthGetDeviceInfo')
```

## Purpose
Returns the verification URL and user code captured by the most recent matching `vuOAuthBeginLogin()` call.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| OutUrl | *CSTRING | Output buffer receiving verification URL text. |
| OutUrlLen | LONG | Size of `OutUrl` in bytes. |
| OutCode | *CSTRING | Output buffer receiving user verification code. |
| OutCodeLen | LONG | Size of `OutCode` in bytes. |

## Return value / error codes
- `1`: Success.
- `-2`: No prior BeginLogin context was captured.
- `-3`: Provider/account mismatch with captured BeginLogin context.
- `-4`: URL and/or code not available.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuOAuthGetDeviceInfo(*CSTRING Provider,*CSTRING AccountKey,*CSTRING OutUrl,LONG OutUrlLen,*CSTRING OutCode,LONG OutCodeLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthGetDeviceInfo')
  END
END

rc         LONG
provider   CSTRING(64)
accountKey CSTRING(128)
outUrl     CSTRING(1024)
outUrlLen  LONG
outCode    CSTRING(128)
outCodeLen LONG

provider   = 'Microsoft'
accountKey = 'user@example.com'
outUrl     = ''
outUrlLen  = SIZE(outUrl)
outCode    = ''
outCodeLen = SIZE(outCode)

rc = vuOAuthGetDeviceInfo(provider, accountKey, outUrl, outUrlLen, outCode, outCodeLen)
IF rc = 1
  MESSAGE('Verify at: ' & outUrl & '| Code: ' & outCode)
ELSE
  MESSAGE('GetDeviceInfo failed: ' & rc)
END
```

## Notes
- `Provider` and `AccountKey` must match the values used for the captured BeginLogin call.
- Call this after BeginLogin when using a device-code style login flow.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)