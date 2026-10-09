
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# LoadBuffer

Loads a complete TOML document from exact-length ANSI or strict UTF-8 bytes.

## Clarion class declaration

```clarion
LoadBuffer PROCEDURE(STRING pTomlBytes,BYTE pEncoding),LONG
```

## Purpose

Loads a complete TOML document from exact-length ANSI or strict UTF-8 bytes.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTomlBytes | STRING | Complete TOML document bytes supplied through a Clarion STRING. |
| pEncoding | BYTE | ProTOML:EncodingANSI or ProTOML:EncodingUTF8. |

## Return value

Returns a Clarion BYTE result as described above.

## Example (Clarion)

```clarion
Utf8Bytes STRING(4096)
RetCode   LONG

CODE
RetCode = Toml.LoadBuffer(Utf8Bytes,ProTOML:EncodingUTF8)
```

## Notes

- For developer-facing MEMO/BLOB storage, prefer SaveMemo, LoadMemo, SaveBlob, and LoadBlob; those methods hide dynamic allocation and retry handling.

## Related methods

- [SaveBuffer](SaveBuffer.md)
- [LoadText](LoadText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)