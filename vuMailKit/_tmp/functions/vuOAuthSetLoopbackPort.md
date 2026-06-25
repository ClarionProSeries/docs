
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthSetLoopbackPort()

## Purpose

Stores the loopback TCP port used by OAuth providers that complete login through a local callback.

For normal applications, use the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md). Call this function only when you are building an advanced/manual setup flow that needs to control the callback port.

## Clarion prototype

**Prototype:** vuOAuthSetLoopbackPort(*CSTRING Provider, *CSTRING AccountKey, LONG LoopbackPort, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthSetLoopbackPort')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider name, normally google or microsoft. |
| AccountKey | *CSTRING | Account key that owns this app configuration, usually the email address. |
| LoopbackPort | LONG | Loopback TCP port to use for callback handling. |
| OutText | *CSTRING | Output buffer receiving status text. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Loopback port stored successfully. |
| -3 | Bad request, including an invalid port value. |
| -5 | Provider does not use this setting. |
| -9 | Internal error. |

## Example (Clarion)

```clarion
Result       LONG
Provider     CSTRING(64)
AccountKey   CSTRING(256)
LoopbackPort LONG
OutText      CSTRING(512)
OutTextLen   LONG

Provider     = 'google'
AccountKey   = 'user@example.com'
LoopbackPort = 8085
CLEAR(OutText)
OutTextLen   = SIZE(OutText)

Result = vuOAuthSetLoopbackPort(Provider, AccountKey, LoopbackPort, OutText, OutTextLen)
```

## Notes

- Use a valid TCP port number. If a provider requires an exact redirect URI, the registered redirect URI must match the selected loopback port.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)