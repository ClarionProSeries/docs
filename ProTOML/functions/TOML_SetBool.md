---
title: "TOML_SetBool"
summary: "Sets a boolean value at the specified key path in a loaded TOML document."
description: "Sets a boolean value at the specified key path in a loaded TOML document."
keywords: ["ProTOML", "Clarion", "TOML_SetBool", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_SetBool"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetBool

Sets a boolean value at the specified key path in a loaded TOML document.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetBool](../classes/SetBool.md).

```clarion
SetBool PROCEDURE(STRING pKeyPath,BYTE pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetBool |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetBool') |

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
RetCode = Toml.SetBool('application.auto_save',1)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetBool.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetBool](../classes/SetBool.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
