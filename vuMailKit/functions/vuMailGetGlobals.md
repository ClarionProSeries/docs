---
title: "vuMailGetGlobals"
summary: "Legacy alias for vuGlobalsLoad()."
description: "Legacy vuMail function name. This function is an alias for the preferred function name."
keywords: ["vuMailKit", "vuMail", "vumailgetglobals", "vuglobalsload"]
function_name: "vuMailGetGlobals"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-01-07"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailGetGlobals()

## Clarion prototype

**Prototype:** vuMailGetGlobals(), SIGNED, PROC, PASCAL, RAW, NAME('vuMailGetGlobals')

## Description
This is the legacy vuMail function name for vuGlobalsLoad().

Preferred function name:

- [vuGlobalsLoad()](vuGlobalsLoad.md)

This function is exported for backward compatibility and behaves identically to vuGlobalsLoad().

## Example (Clarion)
```clarion
rc LONG

rc = vuMailGetGlobals()
IF rc = 0
  MESSAGE('Unable to load legacy global settings: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
