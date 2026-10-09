
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetLastErrorCode

Returns -1 if the last ProTOML operation failed, or 0 if it succeeded.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetLastError](../classes/GetLastError.md).

```clarion
GetLastError PROCEDURE(*CSTRING pErrorText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetLastErrorCode |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetLastErrorCode') |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
ErrorText CSTRING(2048)
ErrorCode LONG

CODE
ErrorCode = Toml.GetLastError(ErrorText)
IF ErrorCode < 0
  MESSAGE(ErrorText,'ProTOML Error')
END
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetLastError.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetLastError](../classes/GetLastError.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)