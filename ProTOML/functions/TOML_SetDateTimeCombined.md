---
title: "TOML_SetDateTimeCombined"
summary: "Sets a TOML datetime value from a Clarion SQL DateTime GROUP buffer (STRING(8) OVER structure)."
description: "Sets a TOML datetime value from a Clarion SQL DateTime GROUP buffer (STRING(8) OVER structure)."
keywords: ["ProTOML", "Clarion", "TOML_SetDateTimeCombined", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_SetDateTimeCombined"
category: "Date and time"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetDateTimeCombined

Sets a TOML datetime value from a Clarion SQL DateTime GROUP buffer (STRING(8) OVER structure).

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetDateTimeText](../classes/SetDateTimeText.md).

```clarion
SetDateTimeText PROCEDURE(STRING pKeyPath,STRING pDateTimeText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetDateTimeCombined |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetDateTimeCombined') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| groupBuffer | STRING | Eight-byte Clarion DATE/TIME group buffer. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetDateTimeText('job.run_at','2026-07-29T08:15:10')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetDateTimeText.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetDateTimeText](../classes/SetDateTimeText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
