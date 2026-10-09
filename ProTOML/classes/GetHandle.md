---
title: "ProTOMLClass.GetHandle"
summary: "Returns the underlying document handle for diagnostics or advanced integration."
description: "Returns the underlying document handle for diagnostics or advanced integration."
keywords: ["ProTOML", "Clarion", "GetHandle", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "GetHandle"
category: "Advanced diagnostics"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetHandle

Returns the underlying document handle for diagnostics or advanced integration.

## Clarion class declaration

```clarion
GetHandle PROCEDURE(),LONG
```

## Purpose

Returns the underlying document handle for diagnostics or advanced integration.

## Return value

Returns the positive raw handle when open, otherwise zero.

## Example (Clarion)

```clarion
RawHandle LONG

CODE
Toml.StartDocument()
RawHandle = Toml.GetHandle()
```

## Notes

- Ordinary application code should not call raw TOML_* exports with this handle. Use the class methods instead.

## Related methods

- [IsOpen](IsOpen.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
