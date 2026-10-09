---
title: "ProTOMLClass.Destruct"
summary: "Releases an open TOML document automatically when the class instance goes out of scope."
description: "Releases an open TOML document automatically when the class instance goes out of scope."
keywords: ["ProTOML", "Clarion", "Destruct", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "Destruct"
category: "Class lifecycle"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# Destruct

Releases an open TOML document automatically when the class instance goes out of scope.

## Clarion class declaration

```clarion
Destruct PROCEDURE()
```

## Purpose

Releases an open TOML document automatically when the class instance goes out of scope.

## Return value

No return value. Clarion invokes the destructor automatically.

## Example (Clarion)

```clarion

CODE
Toml.StartDocument()
! Clarion calls Toml.Destruct automatically when Toml goes out of scope.
```

## Notes

- Application code normally does not call this method directly.

## Related methods

- [Construct](Construct.md)
- [Close](Close.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
