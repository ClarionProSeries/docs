---
title: "vuOAuthLaunchAuthorizeUrl"
summary: "Opens the authorization URL captured from an OAuth BeginLogin flow."
description: "Opens the authorization URL captured from an OAuth BeginLogin flow and optionally copies it to the clipboard."
function_name: "vuOAuthLaunchAuthorizeUrl"
category: "OAuth"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthLaunchAuthorizeUrl()

## Purpose

Uses captured BeginLogin state to open an authorization URL in the default browser. The function can also copy the URL to the clipboard.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard handles browser launch and authorization in the normal setup path.

## Clarion prototype

**Prototype:** vuOAuthLaunchAuthorizeUrl(*CSTRING Provider, *CSTRING AccountKey, LONG CopyUrlToClipboard, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthLaunchAuthorizeUrl')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| CopyUrlToClipboard | LONG | 0 = do not copy, non-zero = copy the authorization URL to the clipboard. |
| OutText | *CSTRING | Output buffer receiving the URL and diagnostics. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Browser launch succeeded. OutText contains the URL and may include a clipboard warning. |
| -8 | Browser launch failed. OutText includes launch diagnostics when available. |
| -9 | BeginLogin state was missing, authorization URL was missing, or an exception occurred. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. Use standard SMTP/POP/IMAP password configuration instead. |

## Example (Clarion)

```clarion
Result             LONG
Provider           CSTRING(64)
AccountKey         CSTRING(256)
CopyUrlToClipboard LONG
OutText            CSTRING(2048)
OutTextLen         LONG

Provider           = 'google'
AccountKey         = 'user@example.com'
CopyUrlToClipboard = 1
CLEAR(OutText)
OutTextLen         = SIZE(OutText)

Result = vuOAuthLaunchAuthorizeUrl(Provider, AccountKey, CopyUrlToClipboard, OutText, OutTextLen)
IF Result <> 1
  MESSAGE('LaunchAuthorizeUrl failed: ' & Result & '| ' & OutText)
END
```

## Notes

- BeginLogin must run first for the same Provider and AccountKey so this function has an authorization URL to launch.
- Clipboard copy is best-effort. Browser launch failure is reported as -8.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
