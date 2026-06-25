---
title: "OAuth Functions"
summary: "OAuth-related functions available in vuMailKit."
description: "OAuth-related vuMailKit helper functions for provider selection, login, status, refresh, and cleanup."
keywords: ["vuMailKit", "OAuth", "functions", "Clarion", "Microsoft", "Google", "Gmail"]
page_type: "overview"
last_updated: "2026-06-24"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# OAuth Functions

vuMailKit includes OAuth helper functions for modern provider sign-in flows.

For most applications, these are advanced/manual helpers. The normal path is to configure OAuth provider values in the vuMailKit global template, import the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md) with Clarion **CTRL+U**, compile the EXE, and let the wizard handle provider detection, OAuth authorization, test send, and profile save.

After the wizard saves the working profile, normal send functions can use the saved profile without hand-coded OAuth flow code.

For provider credential setup, start with:

- [OAuth Setup Overview](oauth/index.md)
- [Microsoft OAuth Setup](oauth/microsoft.md)
- [Google / Gmail OAuth Setup](oauth/google-gmail.md)

## Common OAuth functions

| Function | Purpose |
|---|---|
| [vuOAuthDetectProviderFromEmail](functions/vuOAuthDetectProviderFromEmail.md) | Detects whether an email address maps to a known OAuth provider and reports the recommended auth mode/reason text. |
| [vuOAuthSetProvider](functions/vuOAuthSetProvider.md) | Sets the default OAuth provider name used by helper flows. |
| [vuOAuthGetProvider](functions/vuOAuthGetProvider.md) | Gets the default OAuth provider name from global settings. |
| [vuOAuthSetProviderEnabled](functions/vuOAuthSetProviderEnabled.md) | Enables or disables provider support at runtime. |
| [vuOAuthSetClientSecret](functions/vuOAuthSetClientSecret.md) | Stores a provider/account client secret for advanced manual OAuth flows. |
| [vuOAuthSetLoopbackPort](functions/vuOAuthSetLoopbackPort.md) | Stores a loopback callback port for advanced manual OAuth flows. |
| [vuOAuthBeginLogin](functions/vuOAuthBeginLogin.md) | Starts an OAuth login flow. |
| [vuOAuthLaunchUserVerification](functions/vuOAuthLaunchUserVerification.md) | Opens the verification URL from a device-code style login and can copy the user code. |
| [vuOAuthLaunchAuthorizeUrl](functions/vuOAuthLaunchAuthorizeUrl.md) | Opens the authorization URL captured from a BeginLogin flow. |
| [vuOAuthGetDeviceInfo](functions/vuOAuthGetDeviceInfo.md) | Returns verification URL and user code captured from the last matching BeginLogin call. |
| [vuOAuthCompleteLogin](functions/vuOAuthCompleteLogin.md) | Completes or polls OAuth login using callback or verification data. |
| [vuOAuthStatus](functions/vuOAuthStatus.md) | Returns OAuth status text for a provider/account pair. |
| [vuOAuthRefresh](functions/vuOAuthRefresh.md) | Refreshes OAuth tokens for a provider/account pair. |
| [vuOAuthClear](functions/vuOAuthClear.md) | Clears stored OAuth state/tokens for a provider/account pair. |

## Provider-detection return codes

The [vuOAuthDetectProviderFromEmail](functions/vuOAuthDetectProviderFromEmail.md) page contains the authoritative return-code details for provider detection. Review that page before relying on numeric provider codes in application logic.

## Related pages

- [Preferred Functions](preferred-index.md)
- [OAuth Related functions](functions/index.md#oauth-related)
- [Getting Started](getting-started/index.md)

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
