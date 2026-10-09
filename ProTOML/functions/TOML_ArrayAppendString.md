---
title: "TOML_ArrayAppendString"
summary: "Appends a string to a TOML array and returns the new zero-based index."
description: "Appends a string to a TOML array and returns the new zero-based index."
keywords: ["ProTOML", "Clarion", "TOML_ArrayAppendString", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_ArrayAppendString"
category: "Arrays"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_ArrayAppendString

Appends a string to a TOML array and returns the new zero-based index.

## Preferred Clarion class method

Applications using the ProTOML template normally call [AppendString](../classes/AppendString.md).

```clarion
AppendString PROCEDURE(STRING pKeyPath,STRING pValue,*LONG pIndex),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_ArrayAppendString |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_ArrayAppendString') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| pValue | *CSTRING | Input value or input byte buffer. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
NewIndex LONG
RetCode  LONG

CODE
RetCode = Toml.AppendString('recent_files','C:\Data\settings.toml',NewIndex)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call AppendString.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [AppendString](../classes/AppendString.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
