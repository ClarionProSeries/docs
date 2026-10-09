---
title: "TOML_Save"
summary: "Saves a loaded TOML document back to disk."
description: "Saves a loaded TOML document back to disk."
keywords: ["ProTOML", "Clarion", "TOML_Save", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_Save"
category: "Documents"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_Save

Saves a loaded TOML document back to disk.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SaveFile](../classes/SaveFile.md).

```clarion
SaveFile PROCEDURE(STRING pFileName),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_Save |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_Save') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pFilename | *CSTRING | Null-terminated file name. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
Toml.SetLong('application.refresh_minutes',15)
RetCode = Toml.SaveFile('settings.toml')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SaveFile.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SaveFile](../classes/SaveFile.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
