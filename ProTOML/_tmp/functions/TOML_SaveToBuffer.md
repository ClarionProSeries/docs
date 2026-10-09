
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SaveToBuffer

Serializes a document as ANSI or UTF-8 bytes.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SaveBuffer](../classes/SaveBuffer.md).

```clarion
SaveBuffer PROCEDURE(*CSTRING pTomlText,BYTE pEncoding),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SaveToBuffer |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SaveToBuffer') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pOutBuf | LONG | Caller-provided output buffer, or zero for the first size-query call. |
| outBufBytes | LONG | Size of the output buffer in bytes. |
| encodingCode | LONG | 0 for ANSI or 1 for strict UTF-8. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
Utf8Bytes CSTRING(8192)
RetCode   LONG

CODE
Toml.StartDocument()
Toml.SetString('application.name','PageSnip')
RetCode = Toml.SaveBuffer(Utf8Bytes,ProTOML:EncodingUTF8)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SaveBuffer.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SaveBuffer](../classes/SaveBuffer.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)