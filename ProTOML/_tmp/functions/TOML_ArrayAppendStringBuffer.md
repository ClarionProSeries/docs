
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_ArrayAppendStringBuffer

Appends an ANSI or UTF-8 string to a simple TOML array.

## Preferred Clarion class method

Applications using the ProTOML template normally call [AppendString](../classes/AppendString.md).

```clarion
AppendString PROCEDURE(STRING pKeyPath,STRING pValue,*LONG pIndex),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_ArrayAppendStringBuffer |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_ArrayAppendStringBuffer') |

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