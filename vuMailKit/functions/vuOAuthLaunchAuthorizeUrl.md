---
title: "vuOAuthLaunchAuthorizeUrl"
summary: "Build and launch the provider authorization URL for an OAuth login flow."
function_name: "vuOAuthLaunchAuthorizeUrl"
category: "OAuth"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuOAuthLaunchAuthorizeUrl

## Purpose

Build and launch the provider authorization URL for an OAuth login flow.

## Export name

- `vuOAuthLaunchAuthorizeUrl`

## Clarion prototype (Inside Global MAP)

- `vuOAuthLaunchAuthorizeUrl(*CSTRING Provider,*CSTRING AccountKey,LONG CopyUrlToClipboard,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthLaunchAuthorizeUrl')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| Provider | *CSTRING | Provider name. | Typical values: `google`, `microsoft`. |
| AccountKey | *CSTRING | Account key used to bind the OAuth session. | Usually the email address. |
| CopyUrlToClipboard | LONG | Whether to also copy the URL to the clipboard. | `0 = no`, `1 = yes`. |
| OutText | *CSTRING | Receives status text or the URL. | Writable text buffer. |
| OutTextLen | LONG | Length of `OutText` in bytes. | Pass `SIZE(OutText)`. |

## Expected values and ranges

- `CopyUrlToClipboard`: `0 = no`, `1 = yes`.

## Return value

- `1` = authorize URL built and launch attempted successfully.
- `0` = the operation failed.

## Clarion example

```clarion
Provider                 CSTRING(40)
AccountKey               CSTRING(254)
CopyUrlToClipboard       LONG
OutText                  CSTRING(1024)
OutTextLen               LONG
Result                   LONG

Provider = 'google'
AccountKey = 'user@example.com'
CopyUrlToClipboard = 1
OutTextLen = SIZE(OutText)
CLEAR(OutText)
Result = vuOAuthLaunchAuthorizeUrl(Provider, AccountKey, CopyUrlToClipboard, OutText, OutTextLen)
```

## Notes

- BeginLogin creates the session state; this function handles the explicit browser launch for hosted flows.