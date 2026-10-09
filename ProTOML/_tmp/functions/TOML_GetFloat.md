
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetFloat

Returns a single-precision floating-point value for the Clarion SREAL boundary.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetSReal](../classes/GetSReal.md).

```clarion
GetSReal PROCEDURE(STRING pKeyPath,SREAL pDefault,*SREAL pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetFloat |
| Return type | SREAL |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetFloat') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| defaultVal | SREAL | Default scalar returned when the key or element is absent. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
TaxRate SREAL
RetCode LONG

CODE
RetCode = Toml.GetSReal('pricing.tax_rate',0.0,TaxRate)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetSReal.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetSReal](../classes/GetSReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)