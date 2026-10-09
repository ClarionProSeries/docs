
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetLicenseStatusCode

Returns the current license status code from the license manager.

## Preferred Clarion class method

Applications using the ProTOML template normally call [ReadLicenseStatusCode](../classes/ReadLicenseStatusCode.md).

```clarion
ReadLicenseStatusCode PROCEDURE(),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetLicenseStatusCode |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetLicenseStatusCode') |

## Return value / error handling

Returns the current product license status:

| Value | Meaning |
| ---: | --- |
| 0 | Not initialized |
| 1 | Licensed OK |
| 2 | Explicit `PTM-DEMO` |
| 3 | No license supplied |
| 4 | Blank license supplied |
| 5 | Invalid/malformed format |
| 6 | Legacy/reserved wrong-product status |
| 8 | Named-license authenticator mismatch |
| 9 | Legacy/reserved unsupported-scheme status |
| 10 | Hard blocked/reserved |
| 11 | License verifier unavailable/misconfigured |

The short paid value does not expose product/generation/edition, so PTM1 uses status 8 for a syntactically valid named value that does not authenticate rather than guessing the hidden mismatch.

## Example (Clarion)

```clarion
StatusCode LONG

CODE
StatusCode = Toml.ReadLicenseStatusCode()
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call ReadLicenseStatusCode.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [ReadLicenseStatusCode](../classes/ReadLicenseStatusCode.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)