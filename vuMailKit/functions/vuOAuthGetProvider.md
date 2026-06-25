---
title: "vuOAuthGetProvider"
summary: "Gets the default OAuth provider name stored in vuMailKit global settings."
description: "Gets the default OAuth provider name stored in vuMailKit global settings."
keywords: ["vuMailKit", "OAuth", "vuOAuthGetProvider"]
function_name: "vuOAuthGetProvider"
category: "OAuth"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthGetProvider()

## Purpose

Returns the currently stored default OAuth provider string.

This is an advanced/manual helper. Most applications use the vuMailKit Email Setup Wizard and saved profile behavior instead of reading the provider directly.

## Clarion prototype

**Prototype:** vuOAuthGetProvider(*CSTRING OutProvider), SIGNED, PROC, PASCAL, RAW, NAME('vuOAuthGetProvider')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| OutProvider | *CSTRING | Output buffer that receives the provider name. Use a writable CSTRING of at least 64 bytes. |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Success. |

## Example (Clarion)

```clarion
Result      LONG
OutProvider CSTRING(64)

CLEAR(OutProvider)
Result = vuOAuthGetProvider(OutProvider)
IF Result = 1
  MESSAGE('Provider=' & OutProvider)
END
```

## Notes

- This function has no buffer-length parameter. Size the output CSTRING generously.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
