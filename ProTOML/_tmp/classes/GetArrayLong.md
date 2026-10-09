
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetArrayLong

Reads an integer element from a simple TOML array into a Clarion LONG.

## Clarion class declaration

```clarion
GetArrayLong PROCEDURE(STRING pKeyPath,LONG pIndex,LONG pDefault,*LONG pValue),LONG
```

## Purpose

Reads an integer element from a simple TOML array into a Clarion LONG.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pIndex | LONG | Zero-based array index, or output LONG that receives the new index. |
| pDefault | LONG | Value returned when the TOML key or array element is absent. |
| pValue | *LONG | Value to write, or output variable that receives the requested value. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
Value   LONG
RetCode LONG

CODE
RetCode = Toml.GetArrayLong('retry_delays',0,0,Value)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetArrayCount](GetArrayCount.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)