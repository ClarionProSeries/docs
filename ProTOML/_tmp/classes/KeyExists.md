
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# KeyExists

Reports whether a TOML key path exists in the current document.

## Clarion class declaration

```clarion
KeyExists PROCEDURE(STRING pKeyPath,*BYTE pExists),LONG
```

## Purpose

Reports whether a TOML key path exists in the current document.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pExists | *BYTE | Receives ProTOML:True or ProTOML:False. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
Exists  BYTE
RetCode LONG

CODE
RetCode = Toml.KeyExists('application.name',Exists)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetString](GetString.md)
- [GetLong](GetLong.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)