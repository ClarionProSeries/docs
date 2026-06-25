---
title: "vuOAuthCompleteLogin"
summary: "Completes or polls an advanced/manual OAuth login flow."
description: "Completes or polls an advanced/manual OAuth login flow after callback, device, or loopback verification data is available. Normal applications should use the vuMailKit Email Setup Wizard instead."
keywords: ["vuMailKit", "OAuth", "vuOAuthCompleteLogin"]
function_name: "vuOAuthCompleteLogin"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthCompleteLogin()

## Purpose

Completes or polls an OAuth sign-in flow for a provider/account pair and stores token state when authorization succeeds.

For normal applications, use the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md) instead of calling this directly.

## Clarion prototype

**Prototype:** vuOAuthCompleteLogin(*CSTRING Provider, *CSTRING AccountKey, *CSTRING CallbackText, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthCompleteLogin')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| CallbackText | *CSTRING | Callback payload, pasted redirect URL/code, or blank/poll text depending on flow type. |
| OutText | *CSTRING | Output buffer receiving completion status text. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Token state is present and usable. |
| 3 | Authorization is still pending. |
| 2 | Login is needed or the pending login expired/failed in a way that requires a new login. |
| 0 | No token or pending state exists for this provider/account. |
| -3 | Bad request, such as missing provider/account or missing required callback code. |
| -5 | Requested provider/flow is not implemented. |
| -9 | Provider error, invalid response, listener error, core unavailable, or internal exception. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. Use standard SMTP/POP/IMAP password configuration instead. |

## Example (Clarion)

```clarion
Result       LONG
Provider     CSTRING(64)
AccountKey   CSTRING(256)
CallbackText CSTRING(2048)
OutText      CSTRING(2048)
OutTextLen   LONG

Provider     = 'microsoft'
AccountKey   = 'user@example.com'
CallbackText = ''
CLEAR(OutText)
OutTextLen   = SIZE(OutText)

Result = vuOAuthCompleteLogin(Provider, AccountKey, CallbackText, OutText, OutTextLen)
IF Result = 1
  MESSAGE('OAuth authorization complete.')
ELSIF Result = 3
  MESSAGE('Authorization is still pending.')
ELSE
  MESSAGE('CompleteLogin result=' & Result & '| ' & OutText)
END
```

## Notes

- Provider and AccountKey must match the values used for BeginLogin state.
- Detailed provider or diagnostic text is returned through OutText when available.
- After this function returns 1, later send/receive operations can use the stored OAuth token state for the same account.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
