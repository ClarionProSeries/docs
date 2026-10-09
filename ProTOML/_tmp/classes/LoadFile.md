
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# LoadFile

Loads a .toml file from disk.

## Clarion class declaration

```clarion
LoadFile PROCEDURE(STRING pFileName),LONG
```

## Purpose

Loads a .toml file from disk.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pFileName | STRING | Path of the .toml file to load or save. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.LoadFile('settings.toml')
```

## Notes

- Use GetLastError when the file cannot be opened, parsed, or saved.

## Related methods

- [SaveFile](SaveFile.md)
- [LoadText](LoadText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)