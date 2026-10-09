---
title: "ProTOMLClass.GetArrayCount"
summary: "Returns the number of elements in a simple array or array of tables."
description: "Returns the number of elements in a simple array or array of tables."
keywords: ["ProTOML", "Clarion", "GetArrayCount", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "GetArrayCount"
category: "Arrays"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetArrayCount

Returns the number of elements in a simple array or array of tables.

## Clarion class declaration

```clarion
GetArrayCount PROCEDURE(STRING pKeyPath,*LONG pCount),LONG
```

## Purpose

Returns the number of elements in a simple array or array of tables.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pCount | *LONG | Receives the number of array elements. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
ItemCount LONG
RetCode   LONG

CODE
RetCode = Toml.GetArrayCount('recent_files',ItemCount)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [AppendString](AppendString.md)
- [AppendTable](AppendTable.md)
- [ClearArray](ClearArray.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
