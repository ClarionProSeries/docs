
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SaveToString

Serializes a loaded TOML document to a caller-supplied string buffer.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SaveText](../classes/SaveText.md).

```clarion
SaveText PROCEDURE(*CSTRING pTomlText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SaveToString |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SaveToString') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pOutBuf | *CSTRING | Caller-provided output buffer, or zero for the first size-query call. |
| outBufBytes | LONG | Size of the output buffer in bytes. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
TomlText CSTRING(8192)
RetCode  LONG

CODE
Toml.StartDocument()
Toml.SetString('application.name','PageSnip')
RetCode = Toml.SaveText(TomlText)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SaveText.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SaveText](../classes/SaveText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)