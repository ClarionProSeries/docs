---
title: "vuNoPasswordInRegistry"
summary: "Legacy alias for vuGlobalsSetNoPasswordInRegistry()."
description: "Legacy vuMail function name. This function is an alias for the preferred function name."
keywords: ["vuMailKit", "vuMail", "vunopasswordinregistry", "vuglobalssetnopasswordinregistry"]
function_name: "vuNoPasswordInRegistry"
category: "Globals and Configuration"
version_added: "3.50"
last_updated: "2026-01-07"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuNoPasswordInRegistry()

## Clarion prototype

**Prototype:** vuNoPasswordInRegistry(LONG InValue), LONG, PROC, PASCAL, RAW, NAME('vuNoPasswordInRegistry')

## Description
This is the legacy vuMail function name for vuGlobalsSetNoPasswordInRegistry().

Preferred function name:

- [vuGlobalsSetNoPasswordInRegistry()](vuGlobalsSetNoPasswordInRegistry.md)

This function is exported for backward compatibility and behaves identically to vuGlobalsSetNoPasswordInRegistry().

## Example (Clarion)
```clarion
rc LONG

! Legacy name. Prefer vuGlobalsSetNoPasswordInRegistry for new work.
rc = vuNoPasswordInRegistry(1)

IF rc = 0
  MESSAGE('Password persistence setting was not accepted.')
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
