---
title: "ProTOMLClass.IsOpen"
summary: "Reports whether this class instance currently owns an open TOML document."
description: "Reports whether this class instance currently owns an open TOML document."
keywords: ["ProTOML", "Clarion", "IsOpen", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "IsOpen"
category: "Class lifecycle"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# IsOpen

Reports whether this class instance currently owns an open TOML document.

## Clarion class declaration

```clarion
IsOpen PROCEDURE(),BYTE
```

## Purpose

Reports whether this class instance currently owns an open TOML document.

## Return value

Returns ProTOML:True when a document is open, otherwise ProTOML:False.

## Example (Clarion)

```clarion

CODE
IF Toml.IsOpen()
  MESSAGE('A TOML document is open.')
END
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetHandle](GetHandle.md)
- [Close](Close.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
