
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetArrayString

Reads a string element from a simple TOML array.

## Clarion class declaration

```clarion
GetArrayString PROCEDURE(STRING pKeyPath, LONG pIndex, STRING pDefault, *CSTRING pValue),LONG
```

## Purpose

Reads a string element from a simple TOML array.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pIndex | LONG | Zero-based array index, or output LONG that receives the new index. |
| pDefault | STRING | Value returned when the TOML key or array element is absent. |
| pValue | *CSTRING | Value to write, or output variable that receives the requested value. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
FileName CSTRING(260)
RetCode  LONG

CODE
RetCode = Toml.GetArrayString('recent_files',0,'',FileName)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [AppendString](AppendString.md)
- [GetArrayCount](GetArrayCount.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)