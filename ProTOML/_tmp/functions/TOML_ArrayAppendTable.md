
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_ArrayAppendTable

Appends a table row to a TOML array of tables and returns the new zero-based index.

## Preferred Clarion class method

Applications using the ProTOML template normally call [AppendTable](../classes/AppendTable.md).

```clarion
AppendTable PROCEDURE(STRING pKeyPath,*LONG pIndex),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_ArrayAppendTable |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_ArrayAppendTable') |

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
RowIndex LONG
RetCode  LONG

CODE
RetCode = Toml.AppendTable('contacts',RowIndex)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call AppendTable.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [AppendTable](../classes/AppendTable.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)