
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthClear()

## Purpose

Removes OAuth state/token information for the specified provider/account key.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard handles OAuth status and token flow work in the normal setup path.

## Clarion prototype

**Prototype:** vuOAuthClear(*CSTRING Provider, *CSTRING AccountKey, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthClear')

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
| 0 | State cleared or no remaining state. |
| -3 | Bad request. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. |
| -9 | Core unavailable or internal exception. |

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

Result = vuOAuthClear(Provider, AccountKey, OutText, OutTextLen)
MESSAGE('vuOAuthClear result=' & Result & '| ' & OutText)
```

## Notes

- Clear affects only the specified Provider and AccountKey context.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)