
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_InitLicense

Initializes the runtime license state. Returns 0 for demo mode, 1 for licensed mode, or -1 if blocked.

## Preferred Clarion class method

Applications using the ProTOML template normally call [InitializeLicense](../classes/InitializeLicense.md).

```clarion
InitializeLicense PROCEDURE(STRING pLicenseText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_InitLicense |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_InitLicense') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pLicenseString | *CSTRING | Null-terminated developer license value supplied with ProTOML, or `PTM-DEMO` for demo mode. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.InitializeLicense('PTM-DEMO')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call InitializeLicense.
- Pass the developer license value supplied with ProTOML for licensed operation, or `PTM-DEMO` for demo mode.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [InitializeLicense](../classes/InitializeLicense.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)