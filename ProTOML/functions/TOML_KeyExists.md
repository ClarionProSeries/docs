---
title: "TOML_KeyExists"
summary: "Returns 1 if a key exists at the specified path in a loaded TOML document, 0 if not."
description: "Returns 1 if a key exists at the specified path in a loaded TOML document, 0 if not."
keywords: ["ProTOML", "Clarion", "TOML_KeyExists", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_KeyExists"
category: "Utilities"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_KeyExists

Returns 1 if a key exists at the specified path in a loaded TOML document, 0 if not.

## Preferred Clarion class method

Applications using the ProTOML template normally call [KeyExists](../classes/KeyExists.md).

```clarion
KeyExists PROCEDURE(STRING pKeyPath,*BYTE pExists),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_KeyExists |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_KeyExists') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
Exists  BYTE
RetCode LONG

CODE
RetCode = Toml.KeyExists('application.name',Exists)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call KeyExists.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [KeyExists](../classes/KeyExists.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
