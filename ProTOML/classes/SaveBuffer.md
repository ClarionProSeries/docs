---
title: "ProTOMLClass.SaveBuffer"
summary: "Serializes the current document as ANSI or strict UTF-8 bytes into a caller-supplied CSTRING."
description: "Serializes the current document as ANSI or strict UTF-8 bytes into a caller-supplied CSTRING."
keywords: ["ProTOML", "Clarion", "SaveBuffer", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "SaveBuffer"
category: "Documents"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SaveBuffer

Serializes the current document as ANSI or strict UTF-8 bytes into a caller-supplied CSTRING.

## Clarion class declaration

```clarion
SaveBuffer PROCEDURE(*CSTRING pTomlText,BYTE pEncoding),LONG
```

## Purpose

Serializes the current document as ANSI or strict UTF-8 bytes into a caller-supplied CSTRING.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTomlText | *CSTRING | Complete TOML document text. |
| pEncoding | BYTE | ProTOML:EncodingANSI or ProTOML:EncodingUTF8. |

## Return value

Returns a Clarion BYTE result as described above.

## Example (Clarion)

```clarion
Utf8Bytes CSTRING(8192)
RetCode   LONG

CODE
Toml.StartDocument()
Toml.SetString('application.name','PageSnip')
RetCode = Toml.SaveBuffer(Utf8Bytes,ProTOML:EncodingUTF8)
```

## Notes

- For developer-facing MEMO/BLOB storage, prefer SaveMemo, LoadMemo, SaveBlob, and LoadBlob; those methods hide dynamic allocation and retry handling.

## Related methods

- [LoadBuffer](LoadBuffer.md)
- [SaveText](SaveText.md)
- [SaveBlob](SaveBlob.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
