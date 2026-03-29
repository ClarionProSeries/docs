---
title: "vuOAuthSetClientSecret"
summary: "Store the OAuth client secret for the specified provider and account key."
function_name: "vuOAuthSetClientSecret"
category: "OAuth"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [By category](../functions-by-category.md)

# vuOAuthSetClientSecret

## Purpose

Store the OAuth client secret for the specified provider and account key.

## Export name

- `vuOAuthSetClientSecret`

## Clarion prototype (Inside Global MAP)

- `vuOAuthSetClientSecret(*CSTRING Provider,*CSTRING AccountKey,*CSTRING ClientSecret,*CSTRING OutText,LONG OutTextLen),SIGNED,PROC,PASCAL,RAW,NAME('vuOAuthSetClientSecret')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| Provider | *CSTRING | Provider name. | Typical values: `google`, `microsoft`. |
| AccountKey | *CSTRING | Account key that owns this app configuration. | Usually the email address or profile account key. |
| ClientSecret | *CSTRING | OAuth client secret to store. | Plain text secret provided by the provider portal. |
| OutText | *CSTRING | Receives status text. | Writable text buffer. |
| OutTextLen | LONG | Length of `OutText` in bytes. | Pass `SIZE(OutText)`. |

## Expected values and ranges

- Provider text should match the provider names used elsewhere in the OAuth API.
- Use secure handling in your application UI because the input contains a secret.

## Return value

- `1` = client secret stored successfully.
- `0` = the operation failed.

## Clarion example

```clarion
Provider                 CSTRING(40)
AccountKey               CSTRING(254)
ClientSecret             CSTRING(512)
OutText                  CSTRING(512)
OutTextLen               LONG
Result                   LONG

Provider = 'google'
AccountKey = 'user@example.com'
ClientSecret = 'your-client-secret'
OutTextLen = SIZE(OutText)
CLEAR(OutText)
Result = vuOAuthSetClientSecret(Provider, AccountKey, ClientSecret, OutText, OutTextLen)
```

## Notes

- In managed mode, this is stored in secure storage rather than in plain text registry values.