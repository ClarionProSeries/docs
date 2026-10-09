
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SaveText

Serializes the current document into a caller-supplied Clarion CSTRING using the ANSI compatibility path.

## Clarion class declaration

```clarion
SaveText PROCEDURE(*CSTRING pTomlText),LONG
```

## Purpose

Serializes the current document into a caller-supplied Clarion CSTRING using the ANSI compatibility path.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTomlText | *CSTRING | Complete TOML document text. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

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

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [LoadText](LoadText.md)
- [SaveBuffer](SaveBuffer.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)