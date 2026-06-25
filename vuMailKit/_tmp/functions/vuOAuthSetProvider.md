
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthSetProvider()

## Purpose

Stores the default OAuth provider identifier used by OAuth helper operations.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard normally detects and stores the provider as part of the setup/profile flow.

## Clarion prototype

**Prototype:** vuOAuthSetProvider(*CSTRING InProvider), LONG, PROC, PASCAL, RAW, NAME('vuOAuthSetProvider')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InProvider | *CSTRING | Provider name to store, normally microsoft or google. |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Success. |
| -3 | Bad request because the provider string was blank. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. Use standard SMTP/POP/IMAP password configuration instead. |

## Example (Clarion)

```clarion
Result   LONG
Provider CSTRING(64)

Provider = 'microsoft'
Result = vuOAuthSetProvider(Provider)
IF Result <> 1
  MESSAGE('vuOAuthSetProvider failed: ' & Result)
END
```

## Notes

- This sets a runtime/global default provider; it does not begin sign-in or fetch tokens.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)