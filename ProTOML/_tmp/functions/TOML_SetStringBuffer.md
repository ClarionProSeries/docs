
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetStringBuffer

Sets a string using exact-length ANSI or UTF-8 buffers.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetString](../classes/SetString.md).

```clarion
SetString PROCEDURE(STRING pKeyPath,STRING pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetStringBuffer |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetStringBuffer') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | LONG | TOML dotted or indexed key path. |
| keyPathBytes | LONG | Exact key-path byte count. |
| pValue | LONG | Input value or input byte buffer. |
| valueBytes | LONG | Exact input-value byte count. |
| encodingCode | LONG | 0 for ANSI or 1 for strict UTF-8. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetString('application.name','PageSnip')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetString.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetString](../classes/SetString.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)