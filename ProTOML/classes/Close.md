---
title: "ProTOMLClass.Close"
summary: "Releases the current document handle. Calling Close when no document is open succeeds."
description: "Releases the current document handle. Calling Close when no document is open succeeds."
keywords: ["ProTOML", "Clarion", "Close", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "Close"
category: "Class lifecycle"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# Close

Releases the current document handle. Calling Close when no document is open succeeds.

## Clarion class declaration

```clarion
Close PROCEDURE(),LONG
```

## Purpose

Releases the current document handle. Calling Close when no document is open succeeds.

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.Close()
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [NewDocument](NewDocument.md)
- [IsOpen](IsOpen.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
