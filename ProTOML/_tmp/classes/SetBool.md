
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SetBool

Stores a Clarion BYTE value as a TOML Boolean.

## Clarion class declaration

```clarion
SetBool PROCEDURE(STRING pKeyPath,BYTE pValue),LONG
```

## Purpose

Stores a Clarion BYTE value as a TOML Boolean.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pValue | BYTE | Value to store at the specified TOML key path. |

## Return value

Returns a Clarion BYTE result as described above.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetBool('application.auto_save',1)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetBool](GetBool.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)