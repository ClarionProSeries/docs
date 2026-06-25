---
title: "vuOAuthStatus"
summary: "Queries the OAuth token/login status for a provider/account pair."
description: "Queries the OAuth token/login status for a provider/account pair."
keywords: ["vuMailKit", "OAuth", "vuOAuthStatus"]
function_name: "vuOAuthStatus"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthStatus()

## Purpose

Queries the OAuth token/login status for a provider/account pair.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard handles OAuth status and token flow work in the normal setup path.

## Clarion prototype

**Prototype:** vuOAuthStatus(*CSTRING Provider, *CSTRING AccountKey, *CSTRING OutText, LONG OutTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthStatus')

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
| 1 | Token state is present. |
| 2 | Login is needed. |
| 0 | No token state exists for this provider/account. |
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

Result = vuOAuthStatus(Provider, AccountKey, OutText, OutTextLen)
MESSAGE('vuOAuthStatus result=' & Result & '| ' & OutText)
```

## Notes

- Status checks only the specified Provider and AccountKey scope.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
