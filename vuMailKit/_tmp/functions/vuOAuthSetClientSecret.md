
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthSetClientSecret()

## Purpose

Stores an OAuth client secret for the specified provider/account pair.

For normal applications, enter the Google Secret in the vuMailKit global template and use the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md). Call this function only when you are building an advanced/manual setup flow.

## Clarion prototype

**Prototype:** vuOAuthSetClientSecret(*CSTRING Provider, *CSTRING AccountKey, *CSTRING ClientSecret, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthSetClientSecret')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider name, normally google. |
| AccountKey | *CSTRING | Account key that owns this app configuration, usually the email address. |
| ClientSecret | *CSTRING | OAuth client secret to store. |
| OutText | *CSTRING | Output buffer receiving status text. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Client secret stored successfully. |
| -3 | Bad request, such as missing provider/account. |
| -5 | Provider does not use this setting. |
| -9 | Internal error. |

## Example (Clarion)

```clarion
Result       LONG
Provider     CSTRING(64)
AccountKey   CSTRING(256)
ClientSecret CSTRING(512)
OutText      CSTRING(512)
OutTextLen   LONG

Provider     = 'google'
AccountKey   = 'user@example.com'
ClientSecret = 'your-client-secret'
CLEAR(OutText)
OutTextLen   = SIZE(OutText)

Result = vuOAuthSetClientSecret(Provider, AccountKey, ClientSecret, OutText, OutTextLen)
```

## Notes

- In managed mode, the secret is stored through vuMailKit secure storage rather than plain text registry values.
- Handle the input value as a secret in your application UI.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)