---
title: "TOML_GetDouble"
summary: "Returns a double-precision floating-point value for the Clarion REAL boundary."
description: "Returns a double-precision floating-point value for the Clarion REAL boundary."
keywords: ["ProTOML", "Clarion", "TOML_GetDouble", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_GetDouble"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetDouble

Returns a double-precision floating-point value for the Clarion REAL boundary.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetReal](../classes/GetReal.md).

```clarion
GetReal PROCEDURE(STRING pKeyPath,REAL pDefault,*REAL pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetDouble |
| Return type | REAL |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetDouble') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| defaultVal | REAL | Default scalar returned when the key or element is absent. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
CreditLimit REAL
RetCode     LONG

CODE
RetCode = Toml.GetReal('customer.credit_limit',0.0,CreditLimit)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetReal.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetReal](../classes/GetReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
