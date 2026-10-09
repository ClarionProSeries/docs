---
title: "ProTOMLClass.ClearLastError"
summary: "Clears the class error code, error text, and last output-byte count."
description: "Clears the class error code, error text, and last output-byte count."
keywords: ["ProTOML", "Clarion", "ClearLastError", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "ClearLastError"
category: "Error handling"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ClearLastError

Clears the class error code, error text, and last output-byte count.

## Clarion class declaration

```clarion
ClearLastError PROCEDURE()
```

## Purpose

Clears the class error code, error text, and last output-byte count.

## Return value

No return value.

## Example (Clarion)

```clarion

CODE
Toml.ClearLastError()
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetLastError](GetLastError.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
