
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ReadLicenseStatusCode

Reads the detailed license status code from the runtime.

## Clarion class declaration

```clarion
ReadLicenseStatusCode PROCEDURE(),LONG
```

## Purpose

Reads the detailed license status code from the runtime.

## Return value

Returns the runtime license status code. Current PTM1 values include 1 licensed, 2 explicit demo, 3 no license, 4 blank license, 5 malformed format, 8 authenticator mismatch, 10 hard blocked/reserved, and 11 verifier unavailable/misconfigured. Values 6 and 9 remain legacy/reserved.

## Example (Clarion)

```clarion
StatusCode LONG

CODE
StatusCode = Toml.ReadLicenseStatusCode()
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [InitializeLicense](InitializeLicense.md)
- [ReadLicenseMode](ReadLicenseMode.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)