
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetArrayString

Returns a string value from a simple TOML array at the specified index.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetArrayString](../classes/GetArrayString.md).

```clarion
GetArrayString PROCEDURE(STRING pKeyPath, LONG pIndex, STRING pDefault, *CSTRING pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetArrayString |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetArrayString') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| index | LONG | Zero-based TOML array index. |
| pDefault | *CSTRING | Default string or buffer used when the key is absent. |
| pOutBuf | *CSTRING | Caller-provided output buffer, or zero for the first size-query call. |
| outBufBytes | LONG | Size of the output buffer in bytes. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
FileName CSTRING(260)
RetCode  LONG

CODE
RetCode = Toml.GetArrayString('recent_files',0,'',FileName)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetArrayString.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetArrayString](../classes/GetArrayString.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)