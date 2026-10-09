
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetDouble

Sets a double-precision floating-point value from a Clarion REAL.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetReal](../classes/SetReal.md).

```clarion
SetReal PROCEDURE(STRING pKeyPath,REAL pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetDouble |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetDouble') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| value | REAL | Scalar value to store. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetReal('customer.credit_limit',12500.50)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetReal.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetReal](../classes/SetReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)