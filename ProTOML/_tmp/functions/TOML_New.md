
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_New

Creates a new empty in-memory TOML document.

## Preferred Clarion class method

Applications using the ProTOML template normally call [NewDocument](../classes/NewDocument.md).

```clarion
NewDocument PROCEDURE(),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_New |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_New') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.NewDocument()
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call NewDocument.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [NewDocument](../classes/NewDocument.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)