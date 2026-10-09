---
title: "TOML_Load"
summary: "Loads a TOML file from disk and returns a handle for use in subsequent ProTOML calls."
description: "Loads a TOML file from disk and returns a handle for use in subsequent ProTOML calls."
keywords: ["ProTOML", "Clarion", "TOML_Load", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_Load"
category: "Documents"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_Load

Loads a TOML file from disk and returns a handle for use in subsequent ProTOML calls.

## Preferred Clarion class method

Applications using the ProTOML template normally call [LoadFile](../classes/LoadFile.md).

```clarion
LoadFile PROCEDURE(STRING pFileName),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_Load |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_Load') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pFilename | *CSTRING | Null-terminated file name. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.LoadFile('settings.toml')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call LoadFile.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [LoadFile](../classes/LoadFile.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
