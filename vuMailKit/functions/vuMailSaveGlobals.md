---
title: "vuMailSaveGlobals"
summary: "Legacy alias for vuGlobalsSave()."
description: "Legacy vuMail function name. This function is an alias for the preferred function name."
keywords: ["vuMailKit", "vuMail", "vumailsaveglobals", "vuglobalssave"]
function_name: "vuMailSaveGlobals"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-01-07"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailSaveGlobals()

## Clarion prototype

**Prototype:** vuMailSaveGlobals(), SIGNED, PROC, PASCAL, RAW, NAME('vuMailSaveGlobals')

## Description
This is the legacy vuMail function name for vuGlobalsSave().

Preferred function name:

- [vuGlobalsSave()](vuGlobalsSave.md)

This function is exported for backward compatibility and behaves identically to vuGlobalsSave().

## Example (Clarion)
```clarion
rc LONG

rc = vuMailSaveGlobals()
IF rc = 0
  MESSAGE('Unable to save legacy global settings: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
