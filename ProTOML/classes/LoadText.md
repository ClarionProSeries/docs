---
title: "ProTOMLClass.LoadText"
summary: "Loads a complete TOML document from ordinary Clarion text using the ANSI compatibility path."
description: "Loads a complete TOML document from ordinary Clarion text using the ANSI compatibility path."
keywords: ["ProTOML", "Clarion", "LoadText", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "LoadText"
category: "Documents"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# LoadText

Loads a complete TOML document from ordinary Clarion text using the ANSI compatibility path.

## Clarion class declaration

```clarion
LoadText PROCEDURE(STRING pTomlText),LONG
```

## Purpose

Loads a complete TOML document from ordinary Clarion text using the ANSI compatibility path.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTomlText | STRING | Complete TOML document text. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
TomlText CSTRING(4096)
RetCode  LONG

CODE
TomlText = ?TomlEditor{PROP:Text}
RetCode = Toml.LoadText(TomlText)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [SaveText](SaveText.md)
- [LoadBuffer](LoadBuffer.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
