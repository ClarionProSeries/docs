
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthRefresh()

## Purpose

Requests an OAuth token refresh for a provider/account pair.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard handles OAuth status and token flow work in the normal setup path.

## Clarion prototype

**Prototype:** vuOAuthRefresh(*CSTRING Provider, *CSTRING AccountKey, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthRefresh')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier. |
| AccountKey | *CSTRING | Account key identifier, usually the email address. |
| OutText | *CSTRING | Output buffer receiving status text. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Token state is present after refresh. |
| 2 | Login is needed because refresh could not produce usable token state. |
| 0 | No token state exists for this provider/account. |
| -3 | Bad request. |
| -5 | Requested provider/refresh family is not implemented. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. |
| -9 | Provider error, core unavailable, or internal exception. |

## Example (Clarion)

```clarion
Result     LONG
Provider   CSTRING(64)
AccountKey CSTRING(256)
OutText    CSTRING(1024)
OutTextLen LONG

Provider   = 'microsoft'
AccountKey = 'user@example.com'
CLEAR(OutText)
OutTextLen = SIZE(OutText)

Result = vuOAuthRefresh(Provider, AccountKey, OutText, OutTextLen)
MESSAGE('vuOAuthRefresh result=' & Result & '| ' & OutText)
```

## Notes

- Refresh semantics depend on provider token policy and stored refresh token availability.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)