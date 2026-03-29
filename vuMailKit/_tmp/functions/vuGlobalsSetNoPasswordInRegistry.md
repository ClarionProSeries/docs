
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsSetNoPasswordInRegistry()

## Description
Controls whether the SMTP password is saved in the registry. (legacy name: `vuNoPasswordInRegistry()`).

Previously exported as (legacy name, still supported):

- [vuNoPasswordInRegistry()](vuNoPasswordInRegistry.md)

### Parameters

- `xFlag` (LONG) - 0 allows saving the password, non-zero disables saving the password.

### Returns

A LONG value indicating the result.

- 1: Success (this function always returns 1)

### Notes

When enabled, `vuGlobalsSave()` (legacy: `vuMailSaveGlobals()`) will skip writing the "Password" registry value.

### Example (Clarion)

````clarion
ROUTINE:Test_vuGlobalsSetNoPasswordInRegistry   ROUTINE
  DATA
RC   LONG

  CODE
  RC = vuGlobalsSetNoPasswordInRegistry(1)
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)