---
title: "vuOAuthBeginLogin"
summary: "Starts an advanced/manual OAuth login flow and returns provider-specific verification or authorization text."
description: "Starts an advanced/manual OAuth login flow and returns provider-specific verification or authorization text. Normal applications should use the vuMailKit Email Setup Wizard instead of calling this directly."
keywords: ["vuMailKit", "OAuth", "vuOAuthBeginLogin"]
function_name: "vuOAuthBeginLogin"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthBeginLogin()

## Purpose

Starts an OAuth sign-in flow for a provider/account pair and returns flow text through the output buffer. Depending on the provider and flow type, that text may be device verification instructions or an authorization URL.

For normal applications, use the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md). The wizard uses the configured provider values, handles OAuth authorization, sends a test email, and saves the working profile without requiring your application to call this function directly.

## Clarion prototype

**Prototype:** vuOAuthBeginLogin(*CSTRING Provider, *CSTRING AccountKey, *CSTRING ClientId, *CSTRING Tenant, *CSTRING Scopes, *CSTRING FlowType, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthBeginLogin')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier, normally google or microsoft. Yahoo/AOL OAuth is blocked in current builds. |
| AccountKey | *CSTRING | Account key used to isolate token state. This is usually the email address. |
| ClientId | *CSTRING | Provider application/client ID. Microsoft can use the built-in default when blank; Google requires a configured client ID. |
| Tenant | *CSTRING | Microsoft tenant value such as common. For Google manual loopback flows, this is normally blank when the secret has already been supplied through template settings or vuOAuthSetClientSecret. |
| Scopes | *CSTRING | Space-delimited OAuth scopes. If blank, vuMailKit uses provider defaults. |
| FlowType | *CSTRING | Requested flow type. Common values are DEVICE, LOOPBACK, or PKCE, depending on provider support. |
| OutText | *CSTRING | Output buffer receiving provider instructions, an authorization URL, or diagnostic text. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 3 | Login flow started and user action is pending. OutText contains the next instruction or authorization URL. |
| -3 | Bad request, such as missing provider/account or required provider values. |
| -5 | Requested provider/flow is not implemented. |
| -9 | OAuth core unavailable, provider error, invalid provider response, or internal exception. OutText contains details when available. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. Use standard SMTP/POP/IMAP password configuration instead. |

## Example (Clarion)

```clarion
Result     LONG
Provider   CSTRING(64)
AccountKey CSTRING(256)
ClientId   CSTRING(256)
Tenant     CSTRING(128)
Scopes     CSTRING(512)
FlowType   CSTRING(32)
OutText    CSTRING(2048)
OutTextLen LONG

Provider   = 'microsoft'
AccountKey = 'user@example.com'
ClientId   = '00000000-0000-0000-0000-000000000000'
Tenant     = 'common'
Scopes     = 'offline_access https://outlook.office.com/SMTP.Send'
FlowType   = 'DEVICE'
CLEAR(OutText)
OutTextLen = SIZE(OutText)

Result = vuOAuthBeginLogin(Provider, AccountKey, ClientId, Tenant, Scopes, FlowType, OutText, OutTextLen)
IF Result < 0
  MESSAGE('BeginLogin failed: ' & Result & '| ' & OutText)
END
```

## Notes

- Use the same Provider and AccountKey values on subsequent status, complete, clear, refresh, and launch calls.
- Callers that use device-code flows can pass the returned text to [vuOAuthLaunchUserVerification](vuOAuthLaunchUserVerification.md) or parse it with [vuOAuthGetDeviceInfo](vuOAuthGetDeviceInfo.md).
- Callers that use authorization-URL flows can use [vuOAuthLaunchAuthorizeUrl](vuOAuthLaunchAuthorizeUrl.md) after BeginLogin captures the URL.
- This page documents the current exported wrapper order. Older internal notes and test MAP examples may show the obsolete OutText-first order; do not use that order for current builds.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
