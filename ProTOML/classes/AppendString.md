---
title: "ProTOMLClass.AppendString"
summary: "Appends a string to a simple TOML array and returns the new zero-based index through an output parameter."
description: "Appends a string to a simple TOML array and returns the new zero-based index through an output parameter."
keywords: ["ProTOML", "Clarion", "AppendString", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "AppendString"
category: "Arrays"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# AppendString

Appends a string to a simple TOML array and returns the new zero-based index through an output parameter.

## Clarion class declaration

```clarion
AppendString PROCEDURE(STRING pKeyPath,STRING pValue,*LONG pIndex),LONG
```

## Purpose

Appends a string to a simple TOML array and returns the new zero-based index through an output parameter.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pValue | STRING | Value to write, or output variable that receives the requested value. |
| pIndex | *LONG | Zero-based array index, or output LONG that receives the new index. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
NewIndex LONG
RetCode  LONG

CODE
RetCode = Toml.AppendString('recent_files','C:\Data\settings.toml',NewIndex)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetArrayString](GetArrayString.md)
- [ClearArray](ClearArray.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
