---
title: "TOML_GetDateTimeSeparate"
summary: "Returns a TOML datetime value as separate Clarion date (LONG) and time (LONG) values."
description: "Returns a TOML datetime value as separate Clarion date (LONG) and time (LONG) values."
keywords: ["ProTOML", "Clarion", "TOML_GetDateTimeSeparate", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_GetDateTimeSeparate"
category: "Date and time"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetDateTimeSeparate

Returns a TOML datetime value as separate Clarion date (LONG) and time (LONG) values.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetDateTimeText](../classes/GetDateTimeText.md).

```clarion
GetDateTimeText PROCEDURE(STRING pKeyPath,*CSTRING pDateTimeText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetDateTimeSeparate |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetDateTimeSeparate') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| pOutDate | *LONG | Receives the Clarion DATE value. |
| pOutTime | *LONG | Receives the Clarion TIME value. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
DateTimeText CSTRING(64)
RetCode      LONG

CODE
RetCode = Toml.GetDateTimeText('job.run_at',DateTimeText)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetDateTimeText.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetDateTimeText](../classes/GetDateTimeText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
