
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SetReal

Stores a Clarion REAL as a double-precision floating-point TOML value.

## Clarion class declaration

```clarion
SetReal PROCEDURE(STRING pKeyPath,REAL pValue),LONG
```

## Purpose

Stores a Clarion REAL as a double-precision floating-point TOML value.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pValue | REAL | Value to store at the specified TOML key path. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetReal('customer.credit_limit',12500.50)
```

## Notes

- Clarion REAL is an eight-byte double-precision value.

## Related methods

- [GetReal](GetReal.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)