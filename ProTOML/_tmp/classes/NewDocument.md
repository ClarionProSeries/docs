
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# NewDocument

Creates a genuine empty in-memory TOML document and replaces any document already owned by the instance.

## Clarion class declaration

```clarion
NewDocument PROCEDURE(),LONG
```

## Purpose

Creates a genuine empty in-memory TOML document and replaces any document already owned by the instance.

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.NewDocument()
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [StartDocument](StartDocument.md)
- [LoadText](LoadText.md)
- [LoadFile](LoadFile.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)