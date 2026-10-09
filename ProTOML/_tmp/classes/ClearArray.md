
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ClearArray

Clears an existing array while preserving its kind. A missing key remains absent.

## Clarion class declaration

```clarion
ClearArray PROCEDURE(STRING pKeyPath),LONG
```

## Purpose

Clears an existing array while preserving its kind. A missing key remains absent.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.ClearArray('recent_files')
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetArrayCount](GetArrayCount.md)
- [AppendString](AppendString.md)
- [WriteQueue](WriteQueue.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)