---
title: "vuSetCodePage"
summary: "Legacy alias for vuGlobalsSetCodePage()."
description: "Legacy vuMail function name. This function is an alias for vuGlobalsSetCodePage() and behaves identically. Use vuGlobalsSetCodePage() for new development."
keywords: ["vuMailKit", "vuMail", "vusetcodepage", "vuglobalssetcodepage"]
function_name: "vuSetCodePage"
category: "Globals and Configuration"
version_added: "1.0"
last_updated: "2026-04-26"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetCodePage()

## Clarion prototype

**Prototype:** vuSetCodePage(*CSTRING InCodePage), SIGNED, PROC, PASCAL, RAW, NAME('vuSetCodePage')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuGlobalsSetCodePage()](vuGlobalsSetCodePage.md)

This function is exported for backward compatibility and behaves identically to vuGlobalsSetCodePage().

Important: this is a legacy compatibility setting. It does not replace the current recommendation that external body files containing accented or international characters should be saved as UTF-8.

## Example (Clarion)
```clarion
rc       LONG
codePage CSTRING(64)

codePage = 'UTF-8'
rc = vuSetCodePage(codePage)

IF rc = 0
  MESSAGE('Code page was not accepted: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
