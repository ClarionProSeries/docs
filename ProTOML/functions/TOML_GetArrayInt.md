---
title: "TOML_GetArrayInt"
summary: "Returns an integer value from a simple TOML array at the specified index."
description: "Returns an integer value from a simple TOML array at the specified index."
keywords: ["ProTOML", "Clarion", "TOML_GetArrayInt", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_GetArrayInt"
category: "Arrays"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetArrayInt

Returns an integer value from a simple TOML array at the specified index.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetArrayLong](../classes/GetArrayLong.md).

```clarion
GetArrayLong PROCEDURE(STRING pKeyPath,LONG pIndex,LONG pDefault,*LONG pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetArrayInt |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetArrayInt') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| index | LONG | Zero-based TOML array index. |
| defaultVal | LONG | Default scalar returned when the key or element is absent. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
Value   LONG
RetCode LONG

CODE
RetCode = Toml.GetArrayLong('retry_delays',0,0,Value)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetArrayLong.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetArrayLong](../classes/GetArrayLong.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
