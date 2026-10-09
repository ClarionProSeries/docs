
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_ArrayClear

Clears an existing array while preserving its kind. A missing key remains absent until the first append selects the array kind.

## Preferred Clarion class method

Applications using the ProTOML template normally call [ClearArray](../classes/ClearArray.md).

```clarion
ClearArray PROCEDURE(STRING pKeyPath),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_ArrayClear |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_ArrayClear') |

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
RetCode LONG

CODE
RetCode = Toml.ClearArray('recent_files')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call ClearArray.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [ClearArray](../classes/ClearArray.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)