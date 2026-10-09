---
title: "ProTOMLClass.InitializeLicense"
summary: "Initializes ProTOML licensing for the current process and records the active mode and status code."
description: "Initializes ProTOML licensing for the current process and records the active mode and status code."
keywords: ["ProTOML", "Clarion", "InitializeLicense", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "InitializeLicense"
category: "Licensing and diagnostics"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# InitializeLicense

Initializes ProTOML licensing for the current process and records the active mode and status code.

## Clarion class declaration

```clarion
InitializeLicense PROCEDURE(STRING pLicenseText),LONG
```

## Purpose

Initializes ProTOML licensing for the current process and records the active mode and status code.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pLicenseText | STRING | Developer license value supplied with ProTOML, or `PTM-DEMO` for demo mode. |

## Return value

Returns 0 for demo mode, 1 for licensed mode, or a negative result when the runtime is blocked.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.InitializeLicense('PTM-DEMO')
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.
- Initialize licensing once during application startup. The developer license value is validated by ProTOML.dll; application/template code does not calculate it.

## Related methods

- [ReadLicenseMode](ReadLicenseMode.md)
- [ReadLicenseStatusCode](ReadLicenseStatusCode.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
