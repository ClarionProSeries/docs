---
title: "TOML_GetBool"
summary: "Returns a boolean value from a loaded TOML document as a LONG (1 = true, 0 = false)."
description: "Returns a boolean value from a loaded TOML document as a LONG (1 = true, 0 = false)."
keywords: ["ProTOML", "Clarion", "TOML_GetBool", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_GetBool"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetBool

Returns a boolean value from a loaded TOML document as a LONG (1 = true, 0 = false).

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetBool](../classes/GetBool.md).

```clarion
GetBool PROCEDURE(STRING pKeyPath,BYTE pDefault,*BYTE pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetBool |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetBool') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| defaultVal | LONG | Default scalar returned when the key or element is absent. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
AutoSave BYTE
RetCode  LONG

CODE
RetCode = Toml.GetBool('application.auto_save',0,AutoSave)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetBool.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetBool](../classes/GetBool.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
