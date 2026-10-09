---
title: "ProTOMLClass.AppendTable"
summary: "Appends one row to a TOML array of tables and returns the new zero-based index."
description: "Appends one row to a TOML array of tables and returns the new zero-based index."
keywords: ["ProTOML", "Clarion", "AppendTable", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "AppendTable"
category: "Arrays"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# AppendTable

Appends one row to a TOML array of tables and returns the new zero-based index.

## Clarion class declaration

```clarion
AppendTable PROCEDURE(STRING pKeyPath,*LONG pIndex),LONG
```

## Purpose

Appends one row to a TOML array of tables and returns the new zero-based index.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pIndex | *LONG | Zero-based array index, or output LONG that receives the new index. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RowIndex LONG
RetCode  LONG

CODE
RetCode = Toml.AppendTable('contacts',RowIndex)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [WriteQueue](WriteQueue.md)
- [GetArrayCount](GetArrayCount.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
