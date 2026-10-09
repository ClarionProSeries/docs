
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_LoadFromBuffer

Loads TOML from exact-length ANSI or UTF-8 bytes.

## Preferred Clarion class method

Applications using the ProTOML template normally call [LoadBuffer](../classes/LoadBuffer.md).

```clarion
LoadBuffer PROCEDURE(STRING pTomlBytes,BYTE pEncoding),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_LoadFromBuffer |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_LoadFromBuffer') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTomlContent | LONG | Input TOML text or byte buffer. |
| contentBytes | LONG | Exact number of input bytes. |
| encodingCode | LONG | 0 for ANSI or 1 for strict UTF-8. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
Utf8Bytes STRING(4096)
RetCode   LONG

CODE
RetCode = Toml.LoadBuffer(Utf8Bytes,ProTOML:EncodingUTF8)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call LoadBuffer.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [LoadBuffer](../classes/LoadBuffer.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)