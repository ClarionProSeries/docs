---
title: "TOML_SetInt"
summary: "Sets an integer value (LONG) at the specified key path in a loaded TOML document."
description: "Sets an integer value (LONG) at the specified key path in a loaded TOML document."
keywords: ["ProTOML", "Clarion", "TOML_SetInt", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_SetInt"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetInt

Sets an integer value (LONG) at the specified key path in a loaded TOML document.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetLong](../classes/SetLong.md).

```clarion
SetLong PROCEDURE(STRING pKeyPath,LONG pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetInt |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetInt') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| value | LONG | Scalar value to store. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetLong('application.refresh_minutes',15)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetLong.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetLong](../classes/SetLong.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
