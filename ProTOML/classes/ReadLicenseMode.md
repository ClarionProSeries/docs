---
title: "ProTOMLClass.ReadLicenseMode"
summary: "Reads the current ProTOML mode: blocked, demo, or licensed."
description: "Reads the current ProTOML mode: blocked, demo, or licensed."
keywords: ["ProTOML", "Clarion", "ReadLicenseMode", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "ReadLicenseMode"
category: "Licensing and diagnostics"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ReadLicenseMode

Reads the current ProTOML mode: blocked, demo, or licensed.

## Clarion class declaration

```clarion
ReadLicenseMode PROCEDURE(),LONG
```

## Purpose

Reads the current ProTOML mode: blocked, demo, or licensed.

## Return value

Returns 0 blocked, 1 demo, or 2 licensed.

## Example (Clarion)

```clarion
Mode LONG

CODE
Mode = Toml.ReadLicenseMode()
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [InitializeLicense](InitializeLicense.md)
- [ReadLicenseStatusCode](ReadLicenseStatusCode.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
