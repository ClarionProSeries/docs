---
title: "ProTOMLClass.SetLong"
summary: "Stores a Clarion LONG as a TOML integer."
description: "Stores a Clarion LONG as a TOML integer."
keywords: ["ProTOML", "Clarion", "SetLong", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "SetLong"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SetLong

Stores a Clarion LONG as a TOML integer.

## Clarion class declaration

```clarion
SetLong PROCEDURE(STRING pKeyPath,LONG pValue),LONG
```

## Purpose

Stores a Clarion LONG as a TOML integer.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pValue | LONG | Value to store at the specified TOML key path. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetLong('application.refresh_minutes',15)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetLong](GetLong.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
