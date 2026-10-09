---
title: "TOML_GetString"
summary: "Returns a string value from a loaded TOML document."
description: "Returns a string value from a loaded TOML document."
keywords: ["ProTOML", "Clarion", "TOML_GetString", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_GetString"
category: "Strings"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetString

Returns a string value from a loaded TOML document.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetString](../classes/GetString.md).

```clarion
GetString PROCEDURE(STRING pKeyPath,STRING pDefault,*CSTRING pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetString |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetString') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| pDefault | *CSTRING | Default string or buffer used when the key is absent. |
| pOutBuf | *CSTRING | Caller-provided output buffer, or zero for the first size-query call. |
| outBufBytes | LONG | Size of the output buffer in bytes. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
AppName CSTRING(128)
RetCode LONG

CODE
RetCode = Toml.GetString('application.name','Untitled',AppName)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetString.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetString](../classes/GetString.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
