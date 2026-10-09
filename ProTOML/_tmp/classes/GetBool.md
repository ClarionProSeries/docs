
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetBool

Reads a TOML Boolean into a Clarion BYTE with a supplied default.

## Clarion class declaration

```clarion
GetBool PROCEDURE(STRING pKeyPath,BYTE pDefault,*BYTE pValue),LONG
```

## Purpose

Reads a TOML Boolean into a Clarion BYTE with a supplied default.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDefault | BYTE | Value returned when the TOML key or array element is absent. |
| pValue | *BYTE | Output variable that receives the requested value. |

## Return value

Returns a Clarion BYTE result as described above.

## Example (Clarion)

```clarion
AutoSave BYTE
RetCode  LONG

CODE
RetCode = Toml.GetBool('application.auto_save',0,AutoSave)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [SetBool](SetBool.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)