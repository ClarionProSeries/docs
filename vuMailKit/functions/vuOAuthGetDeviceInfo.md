---
title: "vuOAuthGetDeviceInfo"
summary: "Returns the device verification URL and user code captured during the last matching BeginLogin call."
description: "Returns the device verification URL and user code captured during the last matching BeginLogin call."
keywords: ["vuMailKit", "OAuth", "vuOAuthGetDeviceInfo"]
function_name: "vuOAuthGetDeviceInfo"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthGetDeviceInfo()

## Purpose

Returns the verification URL and user code captured by the most recent matching [vuOAuthBeginLogin](vuOAuthBeginLogin.md) call.

This is an advanced/manual helper. The vuMailKit Email Setup Wizard handles this work in the normal setup path.

## Clarion prototype

**Prototype:** vuOAuthGetDeviceInfo(*CSTRING Provider, *CSTRING AccountKey, *CSTRING OutUrl, LONG OutUrlLen, *CSTRING OutCode, LONG OutCodeLen), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthGetDeviceInfo')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Provider | *CSTRING | Provider identifier used in BeginLogin. |
| AccountKey | *CSTRING | Account key used in BeginLogin. |
| OutUrl | *CSTRING | Output buffer receiving the verification URL. |
| OutUrlLen | LONG | Size of OutUrl in bytes. Pass SIZE(OutUrl). |
| OutCode | *CSTRING | Output buffer receiving the user verification code. |
| OutCodeLen | LONG | Size of OutCode in bytes. Pass SIZE(OutCode). |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Success. |
| -2 | No prior BeginLogin context was captured. |
| -3 | Provider/account mismatch with the captured BeginLogin context. |
| -4 | URL and/or code was not available from the captured BeginLogin text. |

## Example (Clarion)

```clarion
Result     LONG
Provider   CSTRING(64)
AccountKey CSTRING(256)
OutUrl     CSTRING(1024)
OutUrlLen  LONG
OutCode    CSTRING(128)
OutCodeLen LONG

Provider   = 'microsoft'
AccountKey = 'user@example.com'
CLEAR(OutUrl)
OutUrlLen  = SIZE(OutUrl)
CLEAR(OutCode)
OutCodeLen = SIZE(OutCode)

Result = vuOAuthGetDeviceInfo(Provider, AccountKey, OutUrl, OutUrlLen, OutCode, OutCodeLen)
IF Result = 1
  MESSAGE('Verify at: ' & OutUrl & '| Code: ' & OutCode)
ELSE
  MESSAGE('GetDeviceInfo failed: ' & Result)
END
```

## Notes

- Provider and AccountKey must match the values used for the captured BeginLogin call.
- Call this after BeginLogin when using a device-code style login flow.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
