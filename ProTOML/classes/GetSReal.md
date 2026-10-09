---
title: "ProTOMLClass.GetSReal"
summary: "Reads a floating-point TOML value into a Clarion SREAL with a supplied default."
description: "Reads a floating-point TOML value into a Clarion SREAL with a supplied default."
keywords: ["ProTOML", "Clarion", "GetSReal", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "GetSReal"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetSReal

Reads a floating-point TOML value into a Clarion SREAL with a supplied default.

## Clarion class declaration

```clarion
GetSReal PROCEDURE(STRING pKeyPath,SREAL pDefault,*SREAL pValue),LONG
```

## Purpose

Reads a floating-point TOML value into a Clarion SREAL with a supplied default.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDefault | SREAL | Value returned when the TOML key or array element is absent. |
| pValue | *SREAL | Output variable that receives the requested value. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
TaxRate SREAL
RetCode LONG

CODE
RetCode = Toml.GetSReal('pricing.tax_rate',0.0,TaxRate)
```

## Notes

- Clarion SREAL is a four-byte single-precision value.

## Related methods

- [SetSReal](SetSReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
