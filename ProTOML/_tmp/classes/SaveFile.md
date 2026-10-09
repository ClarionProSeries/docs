
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SaveFile

Saves the current document as a .toml file.

## Clarion class declaration

```clarion
SaveFile PROCEDURE(STRING pFileName),LONG
```

## Purpose

Saves the current document as a .toml file.

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
Toml.StartDocument()
Toml.SetLong('application.refresh_minutes',15)
RetCode = Toml.SaveFile('settings.toml')
```

## Notes

- Use GetLastError when the file cannot be opened, parsed, or saved.

## Related methods

- [LoadFile](LoadFile.md)
- [SaveText](SaveText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)