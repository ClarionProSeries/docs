
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetFloat

Sets a single-precision floating-point value from a Clarion SREAL.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetSReal](../classes/SetSReal.md).

```clarion
SetSReal PROCEDURE(STRING pKeyPath,SREAL pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetFloat |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetFloat') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| value | SREAL | Scalar value to store. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetSReal('pricing.tax_rate',0.0975)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetSReal.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetSReal](../classes/SetSReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)