
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_LoadFromString

Parses a TOML document from an in-memory string buffer and returns a handle for subsequent ProTOML calls.

## Preferred Clarion class method

Applications using the ProTOML template normally call [LoadText](../classes/LoadText.md).

```clarion
LoadText PROCEDURE(STRING pTomlText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_LoadFromString |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_LoadFromString') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTomlContent | *CSTRING | Input TOML text or byte buffer. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
TomlText CSTRING(4096)
RetCode  LONG

CODE
TomlText = ?TomlEditor{PROP:Text}
RetCode = Toml.LoadText(TomlText)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call LoadText.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [LoadText](../classes/LoadText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)