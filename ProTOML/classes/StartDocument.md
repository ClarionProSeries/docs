---
title: "ProTOMLClass.StartDocument"
summary: "Creates a genuine empty document through the public ProTOMLClass entry point."
description: "Creates a genuine empty document through the public ProTOMLClass entry point."
keywords: ["ProTOML", "Clarion", "StartDocument", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "StartDocument"
category: "Documents"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# StartDocument

Creates a genuine empty document through the public ProTOMLClass entry point.

## Clarion class declaration

```clarion
StartDocument PROCEDURE(),LONG
```

## Purpose

Creates a genuine empty document through the public ProTOMLClass entry point.

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.StartDocument()
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [NewDocument](NewDocument.md)
- [WriteGroup](WriteGroup.md)
- [WriteQueue](WriteQueue.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
