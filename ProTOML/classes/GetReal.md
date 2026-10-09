---
title: "ProTOMLClass.GetReal"
summary: "Reads a floating-point TOML value into a Clarion REAL with a supplied default."
description: "Reads a floating-point TOML value into a Clarion REAL with a supplied default."
keywords: ["ProTOML", "Clarion", "GetReal", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "GetReal"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetReal

Reads a floating-point TOML value into a Clarion REAL with a supplied default.

## Clarion class declaration

```clarion
GetReal PROCEDURE(STRING pKeyPath,REAL pDefault,*REAL pValue),LONG
```

## Purpose

Reads a floating-point TOML value into a Clarion REAL with a supplied default.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDefault | REAL | Value returned when the TOML key or array element is absent. |
| pValue | *REAL | Output variable that receives the requested value. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
CreditLimit REAL
RetCode     LONG

CODE
RetCode = Toml.GetReal('customer.credit_limit',0.0,CreditLimit)
```

## Notes

- Clarion REAL is an eight-byte double-precision value.

## Related methods

- [SetReal](SetReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
