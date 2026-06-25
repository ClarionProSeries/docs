---
title: "vuOAuthLaunchUserVerification"
summary: "Opens the device verification URL from BeginLogin and optionally copies the user code to the clipboard."
description: "Opens the device verification URL from BeginLogin and optionally copies the user code to the clipboard."
keywords: ["vuMailKit", "OAuth", "vuOAuthLaunchUserVerification"]
function_name: "vuOAuthLaunchUserVerification"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthLaunchUserVerification()

## Purpose

Uses captured BeginLogin state to open the user verification URL in the default browser. When a user code is available, the function can also copy that code to the clipboard.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard performs this work in the normal setup path.

## Clarion prototype

**Prototype:** vuOAuthLaunchUserVerification(*CSTRING Provider, *CSTRING AccountKey, LONG CopyCodeToClipboard, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthLaunchUserVerification')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| CopyCodeToClipboard | LONG | 0 = do not copy, non-zero = copy the user code when one is available. |
| OutText | *CSTRING | Output buffer receiving launch metadata and diagnostics. |
| OutTextLen | LONG | Size of OutText in bytes. Pass SIZE(OutText). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Browser launch succeeded. OutText may still include a clipboard warning if code copy failed. |
| -8 | Browser launch failed. OutText includes launch diagnostics when available. |
| -9 | BeginLogin state was missing, verification URL was missing, or an exception occurred. |
| -12 | Yahoo/AOL OAuth is disabled in vuMailKit. Use standard SMTP/POP/IMAP password configuration instead. |

## Example (Clarion)

```clarion
Result     LONG
Provider   CSTRING(64)
AccountKey CSTRING(256)
CopyCode   LONG
OutText    CSTRING(2048)
OutTextLen LONG

Provider   = 'microsoft'
AccountKey = 'user@example.com'
CopyCode   = 1
CLEAR(OutText)
OutTextLen = SIZE(OutText)

Result = vuOAuthLaunchUserVerification(Provider, AccountKey, CopyCode, OutText, OutTextLen)
IF Result <> 1
  MESSAGE('LaunchUserVerification failed: ' & Result & '| ' & OutText)
END
```

## Notes

- Call this after a successful BeginLogin for the same Provider and AccountKey.
- This function attempts desktop browser automation and can fail in locked-down or server-style environments.
- OutText includes the URL/code metadata and may include launch or clipboard diagnostic text.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
