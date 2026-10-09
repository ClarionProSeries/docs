
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetLicenseMode

Returns the current runtime mode: 0 blocked, 1 demo, or 2 licensed.

## Preferred Clarion class method

Applications using the ProTOML template normally call [ReadLicenseMode](../classes/ReadLicenseMode.md).

```clarion
ReadLicenseMode PROCEDURE(),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetLicenseMode |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetLicenseMode') |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
Mode LONG

CODE
Mode = Toml.ReadLicenseMode()
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call ReadLicenseMode.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [ReadLicenseMode](../classes/ReadLicenseMode.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)