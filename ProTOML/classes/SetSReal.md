---
title: "ProTOMLClass.SetSReal"
summary: "Stores a Clarion SREAL as a single-precision floating-point TOML value."
description: "Stores a Clarion SREAL as a single-precision floating-point TOML value."
keywords: ["ProTOML", "Clarion", "SetSReal", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "SetSReal"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SetSReal

Stores a Clarion SREAL as a single-precision floating-point TOML value.

## Clarion class declaration

```clarion
SetSReal PROCEDURE(STRING pKeyPath,SREAL pValue),LONG
```

## Purpose

Stores a Clarion SREAL as a single-precision floating-point TOML value.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pValue | SREAL | Value to store at the specified TOML key path. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetSReal('pricing.tax_rate',0.0975)
```

## Notes

- Clarion SREAL is a four-byte single-precision value.

## Related methods

- [GetSReal](GetSReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
