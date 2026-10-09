---
title: "TOML_GetStringBuffer"
summary: "Gets a string using exact-length ANSI or UTF-8 buffers."
description: "Gets a string using exact-length ANSI or UTF-8 buffers."
keywords: ["ProTOML", "Clarion", "TOML_GetStringBuffer", "low-level export"]
page_type: "reference"
last_updated: "2026-10-07"
function_name: "TOML_GetStringBuffer"
category: "Strings"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetStringBuffer

Gets a string using exact-length ANSI or UTF-8 buffers.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetString](../classes/GetString.md).

```clarion
GetString PROCEDURE(STRING pKeyPath,STRING pDefault,*CSTRING pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetStringBuffer |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetStringBuffer') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | LONG | TOML dotted or indexed key path. |
| keyPathBytes | LONG | Exact key-path byte count. |
| pDefault | LONG | Default string or buffer used when the key is absent. |
| defaultBytes | LONG | Exact default-value byte count. |
| pOutBuf | LONG | Caller-provided output buffer, or zero for the first size-query call. |
| outBufBytes | LONG | Size of the output buffer in bytes. |
| encodingCode | LONG | 0 for ANSI or 1 for strict UTF-8. |
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
